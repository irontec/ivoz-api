<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Api\IdentifiersExtractorInterface;
use ApiPlatform\Core\Api\IriConverterInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\ORM\QueryBuilder;
use Ivoz\Core\Domain\Model\Helper\DateTimeHelper;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\PropertyAccess\PropertyAccessorInterface;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;
use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;

/**
 * @inheritdoc
 */
class SearchFilterExact extends SearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search_exact';

    private string $resourceClass;

    public function __construct(
        \Symfony\Bridge\Doctrine\ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack = null,
        IriConverterInterface $iriConverter,
        PropertyAccessorInterface $propertyAccessor = null,
        LoggerInterface $logger = null,
        array $properties = null,
        IdentifiersExtractorInterface $identifiersExtractor = null,
        NameConverterInterface $nameConverter = null,
        ResourceMetadataFactoryInterface $resourceMetadataFactory,
        private PropertyMetadataFactoryInterface $propertyMetadataFactory
    ) {
        parent::__construct(
            $managerRegistry,
            $requestStack,
            $iriConverter,
            $propertyAccessor,
            $logger,
            $properties,
            $identifiersExtractor,
            $nameConverter,
            $resourceMetadataFactory
        );
    }

    /**
     * {@inheritdoc}
     */
    public function getDescription(string $resourceClass, bool $addDefault = false): array
    {
        return parent::getDescription($resourceClass, $addDefault);
    }

    public function apply(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null, array $context = [])
    {
        $contextCopy = (new \ArrayObject($context))->getArrayCopy();
        foreach ($contextCopy['filters'] as $field => $filters) {

            if (strpos($field, '_') === 0) {
                continue;
            }

            $metadata = $this->propertyMetadataFactory->create($resourceClass, $field);
            $fieldClassName = $metadata->getType()?->getClassName();
            if (!is_array($filters)) {

                $strategy = self::STRATEGY_EXACT;
                if ($fieldClassName === 'DateTime') {
                    $strategy = self::STRATEGY_START;
                    $this->properties[$field] = $strategy;
                }

                $contextCopy['filters'][$field] = [$strategy => $filters];
            } else {
                foreach ($contextCopy['filters'] as $filter => $value) {

                    if (strpos($filter, '_') === 0) {
                        continue;
                    }

                    if ($filter !== self::STRATEGY_EXACT) {
                        unset($contextCopy['filters'][$filter]);
                    }
                }
            }
        }

        return parent::apply(
            $queryBuilder,
            $queryNameGenerator,
            $resourceClass,
            $operationName,
            $contextCopy
        );
    }

    /**
     * {@inheritdoc}
     */
    protected function filterProperty(
        string $property,
        $value, QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $operationName = null
    ) {
        $this->resourceClass = $resourceClass;
        return parent::filterProperty(...func_get_args());
    }

    /**
     * @inherit
     */
    protected function normalizeValues(array $values, string $property): ?array
    {
        $metadata = $this->propertyMetadataFactory->create($this->resourceClass, $property);
        $propertyClassName = $metadata->getType()->getClassName();
        foreach ($values as $key => $value) {
            if ($key !== self::STRATEGY_EXACT && !is_numeric($key) && $propertyClassName !== 'DateTime') {
                unset($values[$key]);
            }

            preg_match(
                '/^\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}$/',
                $value,
                $matches
            );
            $isDateTime = count($matches) > 0 && $isDateTime = $propertyClassName === 'DateTime';;
            if ($isDateTime) {
                $values[$key] = DateTimeHelper::stringToUtc(
                    $value,
                    'Y-m-d H:i:s',
                    $this->getTimezone()
                );
            }
        }

        if (empty($values)) {
            return null;
        }

        return array_values($values);
    }

    protected function addWhereByStrategy(
        string $strategy,
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $alias,
        string $field,
        $values,
        bool $caseSensitive
    ) {
        $multipleValues = is_array($values) && is_array($values[0]);
        if (! $multipleValues) {
            return parent::addWhereByStrategy(
                $strategy,
                $queryBuilder,
                $queryNameGenerator,
                $alias,
                $field,
                $values,
                $caseSensitive
            );
        }

        $wrapCase = $this->createWrapCase($caseSensitive);
        $valueParameter = ':'.$queryNameGenerator->generateParameterName($field);
        $aliasedField = sprintf('%s.%s', $alias, $field);

        $queryBuilder
            ->andWhere($queryBuilder->expr()->in($wrapCase($aliasedField), $valueParameter))
            ->setParameter($valueParameter, $caseSensitive ? $values[0] : array_map('strtolower', $values[0]));
    }


    private function getTimezone()
    {
        $request = $this->requestStack->getCurrentRequest();

        $timezone = $request->query->get('_timezone', null);
        if (!$timezone) {
            return new \DateTimeZone('UTC');
        }

        return new \DateTimeZone($timezone);
    }
}
