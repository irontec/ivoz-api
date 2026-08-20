<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractContextAwareFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Exception\InvalidArgumentException;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\ORM\Mapping\ClassMetadataInfo;
use Doctrine\ORM\QueryBuilder;
use Doctrine\Persistence\ManagerRegistry;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\PropertyInfo\Type;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;

/**
 * Filters a collection by the contents of a to-many association.
 *
 * Api-platform generates no filters for to-many associations, so entities related
 * through an intermediate entity (the usual N-M modelling in ivoz) could not be
 * filtered at all. This filter fills that gap.
 *
 * It is declared per resource, mapping a logical name (usually the name of the
 * property the frontend already displays) to the doctrine path it resolves to:
 *
 *     attributes:
 *       collectionFilters:
 *         licenceTypes:
 *           path: 'licencesRelUsers.licenceType'
 *           strategies: ['in', 'all', 'exists']
 *
 * Which exposes:
 *
 *     ?licenceTypes[]=1&licenceTypes[]=3   Rows related to 1 OR 3
 *     ?licenceTypes[all]=1,3               Rows related to 1 AND 3
 *     ?exists[licenceTypes]=false          Rows with no related row at all
 *
 * Every strategy is resolved with correlated EXISTS subqueries rather than joins,
 * so no row multiplication is introduced and neither DISTINCT nor GROUP BY are
 * needed, leaving ordering and pagination untouched.
 */
final class CollectionFilter extends AbstractContextAwareFilter
{
    use FilterTrait;

    public const SERVICE_NAME = 'ivoz.api.filter.collection';

    public const STRATEGY_IN = 'in';
    public const STRATEGY_ALL = 'all';
    public const STRATEGY_NONE = 'none';
    public const STRATEGY_ONLY = 'only';
    public const STRATEGY_EXISTS = 'exists';

    public const STRATEGIES = [
        self::STRATEGY_IN,
        self::STRATEGY_ALL,
        self::STRATEGY_NONE,
        self::STRATEGY_ONLY,
        self::STRATEGY_EXISTS,
    ];

    private const COMPARISON_IN = 'IN';
    private const COMPARISON_NOT_IN = 'NOT IN';

    public function __construct(
        ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack,
        ?LoggerInterface $logger,
        ?array $properties,
        ?NameConverterInterface $nameConverter,
        ResourceMetadataFactoryInterface $resourceMetadataFactory
    ) {
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        parent::__construct(
            $managerRegistry,
            $requestStack,
            $logger,
            $properties,
            $nameConverter
        );
    }

    /**
     * {@inheritdoc}
     */
    public function apply(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        ?string $operationName = null,
        array $context = []
    ) {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        if (empty($this->properties)) {
            return;
        }

        return parent::apply(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $operationName,
            $context
        );
    }

    /**
     * @param mixed $value
     */
    protected function filterProperty(
        string $property,
        $value,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        ?string $operationName = null
    ) {
        // ?exists[<property>]=<bool> arrives keyed by the exists parameter itself
        if ($property === self::STRATEGY_EXISTS) {
            foreach ((array) $value as $field => $existsValue) {
                $this->applyExists(
                    (string) $field,
                    $existsValue,
                    $queryBuilder,
                    $queryNameGenerator,
                    $resourceClass
                );
            }

            return;
        }

        $config = $this->properties[$property] ?? null;
        if (!is_array($config)) {
            return;
        }

        $enabled = $this->enabledStrategies($config);

        // A request may carry several strategies for the same property, as in
        // ?licenceTypes[all]=1&licenceTypes[none]=2: every one of them narrows
        // the result down, so they are applied in conjunction
        foreach ($this->parseValue($value) as [$strategy, $values]) {
            if (!in_array($strategy, $enabled, true)) {
                continue;
            }

            $this->applyStrategy(
                $property,
                $strategy,
                $values,
                $config,
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass
            );
        }
    }

    /**
     * @param array<int, mixed>    $values
     * @param array<string, mixed> $config
     */
    private function applyStrategy(
        string $property,
        string $strategy,
        array $values,
        array $config,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass
    ): void {
        if ($strategy === self::STRATEGY_EXISTS) {
            $this->applyExists(
                $property,
                reset($values),
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass
            );

            return;
        }

        $values = array_values(array_filter($values, static function ($item): bool {
            return $item !== '' && $item !== null;
        }));

        if (empty($values)) {
            return;
        }

        $path = $config['path'];

        if ($strategy === self::STRATEGY_NONE) {
            // The negation of in: a single NOT EXISTS over the whole set
            $this->forbidRelated(
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass,
                $path,
                $values
            );

            return;
        }

        if ($strategy === self::STRATEGY_IN) {
            $this->requireRelated(
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass,
                $path,
                $values
            );

            return;
        }

        // all and only both demand every requested value to be present, one
        // EXISTS each, and only additionally rules out anything else
        foreach ($values as $item) {
            $this->requireRelated(
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass,
                $path,
                [$item]
            );
        }

        if ($strategy === self::STRATEGY_ONLY) {
            $this->forbidUnrelated(
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass,
                $path,
                $values
            );
        }
    }

    /**
     * @param mixed $value
     */
    private function applyExists(
        string $property,
        $value,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass
    ): void {
        $config = $this->properties[$property] ?? null;
        if (!is_array($config)) {
            return;
        }

        if (!in_array(self::STRATEGY_EXISTS, $this->enabledStrategies($config), true)) {
            return;
        }

        $exists = filter_var($value, FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE);
        if ($exists === null) {
            return;
        }

        $this->requireAnyRelated(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $config['path'],
            $exists
        );
    }

    /**
     * At least one related row matches the given values
     *
     * @param array<int, mixed> $values
     */
    private function requireRelated(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $path,
        array $values
    ): void {
        $this->addRelatedSubQuery(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $path,
            $values,
            self::COMPARISON_IN,
            false
        );
    }

    /**
     * No related row matches the given values
     *
     * @param array<int, mixed> $values
     */
    private function forbidRelated(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $path,
        array $values
    ): void {
        $this->addRelatedSubQuery(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $path,
            $values,
            self::COMPARISON_IN,
            true
        );
    }

    /**
     * No related row falls outside the given values
     *
     * @param array<int, mixed> $values
     */
    private function forbidUnrelated(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $path,
        array $values
    ): void {
        $this->addRelatedSubQuery(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $path,
            $values,
            self::COMPARISON_NOT_IN,
            true
        );
    }

    /**
     * There is at least one related row, whatever its value, or none at all
     */
    private function requireAnyRelated(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $path,
        bool $required
    ): void {
        $this->addRelatedSubQuery(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $path,
            null,
            self::COMPARISON_IN,
            !$required
        );
    }

    /**
     * Correlated EXISTS subquery over the to-many association.
     *
     * Callers should go through the named wrappers above rather than spelling
     * out the comparison and the negation here.
     *
     * @param array<int, mixed>|null $values null restricts nothing, matching any related row
     */
    private function addRelatedSubQuery(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $path,
        ?array $values,
        string $comparison,
        bool $negate
    ): void {
        [$associationName, $field] = $this->splitPath($path);

        $entityManager = $queryBuilder->getEntityManager();
        $association = $entityManager
            ->getClassMetadata($resourceClass)
            ->getAssociationMapping($associationName);

        $mappedBy = $association['mappedBy'] ?? null;
        if (!$mappedBy) {
            throw new InvalidArgumentException(
                sprintf(
                    'Collection filter path "%s" must start with an association mapped by the '
                    . 'related entity (one-to-many or the inverse side of many-to-many), "%s" is not.',
                    $path,
                    $associationName
                )
            );
        }

        $alias = $queryNameGenerator->generateJoinAlias($associationName);
        $rootAlias = $queryBuilder->getRootAliases()[0];

        $subQuery = $entityManager
            ->createQueryBuilder()
            ->select('1')
            ->from($association['targetEntity'], $alias)
            ->andWhere(sprintf('%s.%s = %s', $alias, $mappedBy, $rootAlias));

        if ($values !== null) {
            $parameterName = $queryNameGenerator->generateParameterName($associationName);
            $subQuery->andWhere(
                sprintf('%s.%s %s (:%s)', $alias, $field, $comparison, $parameterName)
            );
            $queryBuilder->setParameter($parameterName, $values);
        }

        $expression = $queryBuilder->expr()->exists($subQuery->getDQL());

        $queryBuilder->andWhere(
            $negate
                ? $queryBuilder->expr()->not($expression)
                : $expression
        );
    }

    /**
     * @return array{0: string, 1: string}
     */
    private function splitPath(string $path): array
    {
        $segments = explode('.', $path);

        if (count($segments) !== 2) {
            throw new InvalidArgumentException(
                sprintf(
                    'Collection filter path "%s" must be "<association>.<field>", '
                    . 'deeper paths are not supported.',
                    $path
                )
            );
        }

        return [$segments[0], $segments[1]];
    }

    /**
     * Resolves the request value into every strategy it requests, along with the
     * values each one takes. More than one may be present, as in
     * ?licenceTypes[all]=1&licenceTypes[none]=2.
     *
     * @param mixed $value
     *
     * @return array<int, array{0: string, 1: array<int, mixed>}>
     */
    private function parseValue($value): array
    {
        if (!is_array($value)) {
            return [[self::STRATEGY_IN, [$value]]];
        }

        $response = [];
        $bareValues = [];

        foreach ($value as $key => $item) {
            // ?property[]=a&property[]=b comes in numerically indexed
            if (is_numeric($key)) {
                $bareValues[] = $item;
                continue;
            }

            if (!in_array($key, self::STRATEGIES, true)) {
                continue;
            }

            $response[] = [(string) $key, $this->normalizeValues($item)];
        }

        if (!empty($bareValues)) {
            $response[] = [self::STRATEGY_IN, $this->splitValues($bareValues)];
        }

        return $response;
    }

    /**
     * @param mixed $value
     *
     * @return array<int, mixed>
     */
    private function normalizeValues($value): array
    {
        if (is_array($value)) {
            return $this->splitValues(array_values($value));
        }

        // A single multi valued form control feeds every strategy the same way,
        // as a comma separated list
        return array_map('trim', explode(',', (string) $value));
    }

    /**
     * @param array<int, mixed> $values
     *
     * @return array<int, mixed>
     */
    private function splitValues(array $values): array
    {
        $response = [];
        foreach ($values as $value) {
            if (!is_string($value) || !str_contains($value, ',')) {
                $response[] = $value;
                continue;
            }

            foreach (explode(',', $value) as $item) {
                $response[] = trim($item);
            }
        }

        return $response;
    }

    /**
     * @param array<string, mixed> $config
     *
     * @return string[]
     */
    private function enabledStrategies(array $config): array
    {
        /** @var string[] $strategies */
        $strategies = $config['strategies'] ?? self::STRATEGIES;

        return $strategies;
    }

    /**
     * {@inheritdoc}
     */
    public function getDescription(string $resourceClass): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        if (empty($this->properties)) {
            return [];
        }

        $description = [];
        foreach ($this->properties as $property => $config) {
            if (!is_array($config)) {
                continue;
            }

            $strategies = $this->enabledStrategies($config);

            if (in_array(self::STRATEGY_IN, $strategies, true)) {
                foreach ([$property, $property . '[]'] as $parameterName) {
                    $description[$parameterName] = [
                        'property' => $property,
                        'type' => Type::BUILTIN_TYPE_STRING,
                        'required' => false,
                        'strategy' => self::STRATEGY_IN,
                    ];
                }
            }

            $setDescriptions = [
                self::STRATEGY_ALL => 'Comma separated values, all of them must be present',
                self::STRATEGY_NONE => 'Comma separated values, none of them may be present',
                self::STRATEGY_ONLY => 'Comma separated values, exactly them and nothing else',
            ];

            foreach ($setDescriptions as $strategy => $strategyDescription) {
                if (!in_array($strategy, $strategies, true)) {
                    continue;
                }

                $description[$property . '[' . $strategy . ']'] = [
                    'property' => $property,
                    'type' => Type::BUILTIN_TYPE_STRING,
                    'required' => false,
                    'strategy' => $strategy,
                    'description' => $strategyDescription,
                ];
            }

            if (in_array(self::STRATEGY_EXISTS, $strategies, true)) {
                // Both spellings: clients send exists[<property>], while the operator is
                // only offered by the UI when advertised as <property>[exists]
                $parameterNames = [
                    self::STRATEGY_EXISTS . '[' . $property . ']',
                    $property . '[' . self::STRATEGY_EXISTS . ']',
                ];

                foreach ($parameterNames as $parameterName) {
                    $description[$parameterName] = [
                        'property' => $property,
                        'type' => Type::BUILTIN_TYPE_BOOL,
                        'required' => false,
                        'strategy' => self::STRATEGY_EXISTS,
                    ];
                }
            }
        }

        return $description;
    }
}
