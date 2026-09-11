<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter as BaseOrderFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryBuilderHelper;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Exception\ResourceClassNotFoundException;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\ORM\Query\Expr\Join;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\QueryBuilder;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;

/**
 * @inheritdoc
 */
class OrderFilter extends BaseOrderFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.order';

    use FilterTrait;

    public function __construct(
        ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack,
        $orderParameterName,
        ?LoggerInterface $logger,
        ?array $properties,
        ?NameConverterInterface $nameConverter,
        ResourceMetadataFactoryInterface $resourceMetadataFactory
    ) {
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        parent::__construct(
            $managerRegistry,
            $requestStack,
            $orderParameterName,
            $logger,
            $properties,
            $nameConverter
        );
    }

    /**
     * {@inheritdoc}
     */
    public function getDescription(string $resourceClass): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        $filters = $this->filterDescription(
            parent::getDescription($resourceClass)
        );

        foreach ($this->getSortableAssociations($resourceClass) as $association) {
            $name = sprintf('%s[%s]', $this->orderParameterName, $association);
            $filters[$name] = [
                'property' => $association,
                'type' => 'string',
                'required' => false,
            ];
        }

        foreach ($filters as $name => $spec) {
            $filters[$name]['swagger']['enum'] = ['ASC', 'DESC'];
        }

        return $filters;
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

        parent::apply($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $context);
    }

    /**
     * {@inheritdoc}
     */
    protected function filterProperty(
        string $property,
        $direction,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        ?string $operationName = null
    ) {
        $orderFields = $this->getAssociationOrderFields($property, $resourceClass);
        if (empty($orderFields)) {
            parent::filterProperty(
                $property,
                $direction,
                $queryBuilder,
                $queryNameGenerator,
                $resourceClass,
                $operationName
            );

            return;
        }

        if (!$this->isPropertyEnabled($property, $resourceClass)) {
            return;
        }

        $direction = strtoupper((string) $direction);
        if (!in_array($direction, [self::DIRECTION_ASC, self::DIRECTION_DESC], true)) {
            return;
        }

        $this->addAssociationOrderBy(
            $property,
            $orderFields,
            $direction,
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass
        );
    }

    /**
     * @return string[]
     */
    private function getSortableAssociations(string $resourceClass): array
    {
        $classMetadata = $this->getClassMetadata($resourceClass);
        $associations = [];

        foreach ($classMetadata->getAssociationNames() as $association) {
            if (!$this->isPropertyEnabled($association, $resourceClass)) {
                continue;
            }

            $orderFields = $this->getAssociationOrderFields($association, $resourceClass);
            if (empty($orderFields)) {
                continue;
            }

            $associations[] = $association;
        }

        return $associations;
    }

    /**
     * @return string[]
     */
    private function getAssociationOrderFields(string $property, string $resourceClass): array
    {
        $classMetadata = $this->getClassMetadata($resourceClass);
        if (!$classMetadata->hasAssociation($property)) {
            return [];
        }

        if (!$classMetadata->isSingleValuedAssociation($property)) {
            return [];
        }

        $targetClass = $classMetadata->getAssociationTargetClass($property);

        try {
            $order = $this
                ->resourceMetadataFactory
                ->create($targetClass)
                ->getAttribute('order');
        } catch (ResourceClassNotFoundException $e) {
            return [];
        }

        if (!is_array($order)) {
            return [];
        }

        $targetMetadata = $this->getClassMetadata($targetClass);
        $fields = [];
        foreach ($order as $field => $fieldDirection) {
            if (is_int($field)) {
                $field = $fieldDirection;
            }

            if (!is_string($field) || !$targetMetadata->hasField($field)) {
                continue;
            }

            $fields[] = $field;
        }

        return $fields;
    }

    /**
     * @param string[] $orderFields
     */
    private function addAssociationOrderBy(
        string $association,
        array $orderFields,
        string $direction,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass
    ): void {
        $rootAlias = $queryBuilder->getRootAliases()[0];
        $alias = QueryBuilderHelper::addJoinOnce(
            $queryBuilder,
            $queryNameGenerator,
            $rootAlias,
            $association,
            Join::LEFT_JOIN
        );

        $nullRank = $this->addNullRankSelect($alias, $association, $queryBuilder, $resourceClass);
        if ($nullRank) {
            $queryBuilder->addOrderBy($nullRank, self::DIRECTION_DESC);
        }

        foreach ($orderFields as $field) {
            $queryBuilder->addOrderBy(
                sprintf('%s.%s', $alias, $field),
                $direction
            );
        }
    }

    private function addNullRankSelect(
        string $alias,
        string $association,
        QueryBuilder $queryBuilder,
        string $resourceClass
    ): ?string {
        $targetClass = $this
            ->getClassMetadata($resourceClass)
            ->getAssociationTargetClass($association);

        $identifiers = $this
            ->getClassMetadata($targetClass)
            ->getIdentifierFieldNames();

        if (count($identifiers) !== 1) {
            return null;
        }

        $nullRank = sprintf('_%s_null_rank', $alias);
        $queryBuilder->addSelect(
            sprintf(
                'CASE WHEN %s.%s IS NULL THEN 0 ELSE 1 END AS HIDDEN %s',
                $alias,
                current($identifiers),
                $nullRank
            )
        );

        return $nullRank;
    }
}
