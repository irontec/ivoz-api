<?php

namespace Ivoz\Api\Swagger\Metadata\Resource\ResourceMetadata;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use ApiPlatform\Core\Metadata\Resource\ResourceMetadata;
use Doctrine\ORM\Mapping\ClassMetadata;
use Doctrine\ORM\Mapping\ClassMetadataInfo;
use Ivoz\Api\Doctrine\Orm\Filter\BooleanFilter;
use Ivoz\Api\Doctrine\Orm\Filter\CollectionFilter;
use Ivoz\Api\Doctrine\Orm\Filter\DateFilter;
use Ivoz\Api\Doctrine\Orm\Filter\ExistsFilter;
use Ivoz\Api\Doctrine\Orm\Filter\NotEqualFilter;
use Ivoz\Api\Doctrine\Orm\Filter\NumericFilter;

use Ivoz\Api\Doctrine\Orm\Filter\OrderFilter;
use Ivoz\Api\Doctrine\Orm\Filter\RangeFilter;
use Ivoz\Api\Doctrine\Orm\Filter\SearchFilter;
use Ivoz\Api\Doctrine\Orm\Filter\SearchFilterEnd;
use Ivoz\Api\Doctrine\Orm\Filter\SearchFilterExact;
use Ivoz\Api\Doctrine\Orm\Filter\SearchFilterStart;
use Ivoz\Api\Entity\Metadata\Property\Factory\PropertyNameCollectionFactory;
use Ivoz\Core\Domain\Model\EntityInterface;
use Symfony\Bridge\Doctrine\ManagerRegistry;

class FilterMetadataFactory implements ResourceMetadataFactoryInterface
{
    /**
     * @var ResourceMetadataFactoryInterface
     */
    private $decorated;

    /**
     * @var PropertyNameCollectionFactory
     */
    private $propertyNameCollectionFactory;

    /**
     * @var ManagerRegistry
     */
    private $managerRegistry;

    public function __construct(
        ResourceMetadataFactoryInterface $decorated,
        PropertyNameCollectionFactory $propertyNameCollectionFactory,
        ManagerRegistry $managerRegistry
    ) {
        $this->decorated = $decorated;
        $this->propertyNameCollectionFactory = $propertyNameCollectionFactory;
        $this->managerRegistry = $managerRegistry;
    }

    /**
     * @inheritdoc
     */
    public function create(string $resourceClass): ResourceMetadata
    {
        $resourceMetadata = $this->decorated->create($resourceClass);
        $isEntity = in_array(EntityInterface::class, class_implements($resourceClass));
        if (!$isEntity) {
            return $resourceMetadata;
        }

        $attributes = $resourceMetadata->getAttributes();
        $filters = $this->getEntityFilters($resourceClass, $resourceMetadata);

        $collectionFilters = $this->getCollectionFilters($resourceClass, $attributes);
        if (!empty($collectionFilters)) {
            $filters[CollectionFilter::SERVICE_NAME] = $collectionFilters;
        }

        if (!empty($filters)) {
            $attributes['filters'] = array_keys($filters);
            $attributes['filters'][] = 'ivoz.api.filter.property_filter';
            $attributes['filterFields'] = $filters;
        }

        return $resourceMetadata->withAttributes($attributes);
    }

    /**
     * Reads the per-resource `collectionFilters` declaration, which maps a logical
     * filter name to the to-many doctrine path it resolves to.
     *
     * @param array<string, mixed>|null $attributes
     *
     * @return array<string, array<string, mixed>>
     */
    private function getCollectionFilters(string $resourceClass, ?array $attributes): array
    {
        $declaration = $attributes['collectionFilters'] ?? null;
        if (!is_array($declaration)) {
            return [];
        }

        $response = [];
        foreach ($declaration as $name => $config) {
            if (!is_array($config) || !isset($config['path'])) {
                throw new \DomainException(
                    sprintf(
                        'Collection filter "%s" of %s must declare a "path".',
                        $name,
                        $resourceClass
                    )
                );
            }

            $this->assertToManyPath($resourceClass, (string) $name, (string) $config['path']);

            $strategies = $config['strategies'] ?? CollectionFilter::STRATEGIES;
            $unknown = array_diff($strategies, CollectionFilter::STRATEGIES);
            if (!empty($unknown)) {
                throw new \DomainException(
                    sprintf(
                        'Collection filter "%s" of %s declares unknown strategies: %s. Valid ones are: %s.',
                        $name,
                        $resourceClass,
                        implode(', ', $unknown),
                        implode(', ', CollectionFilter::STRATEGIES)
                    )
                );
            }

            if (in_array(CollectionFilter::STRATEGY_ONLY, $strategies, true)) {
                $this->assertNotNullableTarget(
                    $resourceClass,
                    (string) $name,
                    (string) $config['path']
                );
            }

            $response[$name] = [
                'path' => $config['path'],
                'strategies' => array_values($strategies),
            ];
        }

        return $response;
    }

    /**
     * The `only` strategy rules out extra rows with `NOT IN`, and a NULL never
     * matches `NOT IN`, so a nullable target would let rows carrying NULL slip
     * through unnoticed and report a wider set as an exact match.
     */
    private function assertNotNullableTarget(string $resourceClass, string $name, string $path): void
    {
        $manager = $this->managerRegistry->getManagerForClass($resourceClass);
        if (!$manager) {
            return;
        }

        [$associationName, $field] = explode('.', $path);

        /** @var ClassMetadata $metadata */
        $metadata = $manager->getClassMetadata($resourceClass);
        $association = $metadata->getAssociationMapping($associationName);

        /** @var ClassMetadata $targetMetadata */
        $targetMetadata = $manager->getClassMetadata($association['targetEntity']);

        if ($targetMetadata->hasAssociation($field)) {
            $mapping = $targetMetadata->getAssociationMapping($field);
            $nullable = $mapping['joinColumns'][0]['nullable'] ?? true;
        } else {
            $mapping = $targetMetadata->getFieldMapping($field);
            $nullable = $mapping['nullable'] ?? false;
        }

        if (!$nullable) {
            return;
        }

        throw new \DomainException(
            sprintf(
                'Collection filter "%s" of %s declares the "%s" strategy over path "%s", but '
                . '"%s" is nullable. Rows holding NULL there could not be told apart from '
                . 'absent ones, so an exact match cannot be guaranteed.',
                $name,
                $resourceClass,
                CollectionFilter::STRATEGY_ONLY,
                $path,
                $field
            )
        );
    }

    /**
     * Fails fast on a mistyped path, so it surfaces on cache warmup instead of on
     * the first request that happens to use the filter.
     */
    private function assertToManyPath(string $resourceClass, string $name, string $path): void
    {
        $segments = explode('.', $path);
        if (count($segments) !== 2) {
            throw new \DomainException(
                sprintf(
                    'Collection filter "%s" of %s declares path "%s", expected "<association>.<field>".',
                    $name,
                    $resourceClass,
                    $path
                )
            );
        }

        [$associationName, $field] = $segments;

        $manager = $this->managerRegistry->getManagerForClass($resourceClass);
        if (!$manager) {
            return;
        }

        /** @var ClassMetadata $metadata */
        $metadata = $manager->getClassMetadata($resourceClass);

        if (!$metadata->hasAssociation($associationName)) {
            throw new \DomainException(
                sprintf(
                    'Collection filter "%s" of %s declares path "%s", but "%s" is not an association.',
                    $name,
                    $resourceClass,
                    $path,
                    $associationName
                )
            );
        }

        $association = $metadata->getAssociationMapping($associationName);
        $isToMany = in_array(
            $association['type'],
            [ClassMetadataInfo::ONE_TO_MANY, ClassMetadataInfo::MANY_TO_MANY],
            true
        );

        if (!$isToMany) {
            throw new \DomainException(
                sprintf(
                    'Collection filter "%s" of %s declares path "%s", but "%s" is not a to-many '
                    . 'association. Regular associations are already filterable.',
                    $name,
                    $resourceClass,
                    $path,
                    $associationName
                )
            );
        }

        if (empty($association['mappedBy'])) {
            throw new \DomainException(
                sprintf(
                    'Collection filter "%s" of %s declares path "%s", but "%s" is not mapped by '
                    . 'the related entity. Only the inverse side of a to-many association is supported.',
                    $name,
                    $resourceClass,
                    $path,
                    $associationName
                )
            );
        }

        $targetMetadata = $manager->getClassMetadata($association['targetEntity']);
        if (!$targetMetadata->hasField($field) && !$targetMetadata->hasAssociation($field)) {
            throw new \DomainException(
                sprintf(
                    'Collection filter "%s" of %s declares path "%s", but "%s" has no "%s" property.',
                    $name,
                    $resourceClass,
                    $path,
                    $association['targetEntity'],
                    $field
                )
            );
        }
    }

    private function getEntityFilters(string $resourceClass, ResourceMetadata $resourceMetadata)
    {
        $filters = [
            SearchFilter::SERVICE_NAME => [],
            NotEqualFilter::SERVICE_NAME => [],
            DateFilter::SERVICE_NAME => [],
            BooleanFilter::SERVICE_NAME => [],
            NumericFilter::SERVICE_NAME => [],
            RangeFilter::SERVICE_NAME => [],
            OrderFilter::SERVICE_NAME => [],
            ExistsFilter::SERVICE_NAME => [],
        ];

        $attributes = $this->getEntityAttributes($resourceClass, $resourceMetadata);
        foreach ($attributes as $attribute) {
            $type = $this->getFieldType($resourceClass, $attribute);
            if (!is_null($type)) {
                $filters[OrderFilter::SERVICE_NAME][$attribute] = Filter\OrderFilter::NULLS_LARGEST;
            }

            if ($this->isId($resourceClass, $attribute)) {
                if ($type === 'integer') {
                    $filters[SearchFilterExact::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_EXACT;
                    $filters[NotEqualFilter::SERVICE_NAME][$attribute] = null;
                }

                continue;
            }

            switch ($type) {
                case 'string':
                case 'guid':
                case 'text':
                    $filters[SearchFilter::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_PARTIAL;
                    $filters[SearchFilterExact::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_EXACT;
                    $filters[SearchFilterStart::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_START;
                    $filters[SearchFilterEnd::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_END;
                    $filters[NotEqualFilter::SERVICE_NAME][$attribute] = null;
                    $isNullable = $this->isNullableField($resourceClass, $attribute);
                    if ($isNullable) {
                        $filters[ExistsFilter::SERVICE_NAME][$attribute] = ExistsFilter::QUERY_PARAMETER_KEY;
                    }
                    break;
                case 'smallint':
                case 'integer':
                case 'bigint':
                case 'decimal':
                case 'float':
                    $filters[NumericFilter::SERVICE_NAME][$attribute] = null;
                    $filters[RangeFilter::SERVICE_NAME][$attribute] = null;
                    $filters[NotEqualFilter::SERVICE_NAME][$attribute] = null;
                    $isNullable = $this->isNullableField($resourceClass, $attribute);
                    if ($isNullable) {
                        $filters[ExistsFilter::SERVICE_NAME][$attribute] = ExistsFilter::QUERY_PARAMETER_KEY;
                    }
                    break;
                case ClassMetadataInfo::MANY_TO_ONE:
                    $filters[SearchFilter::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_EXACT;

                    $isNullable = $this->isForeignKeyNullable($resourceClass, $attribute);
                    if ($isNullable) {
                        $filters[ExistsFilter::SERVICE_NAME][$attribute] = ExistsFilter::QUERY_PARAMETER_KEY;
                    }

                    break;
                case 'boolean':
                    $filters[BooleanFilter::SERVICE_NAME][$attribute] = null;
                    $isNullable = $this->isNullableField($resourceClass, $attribute);
                    if ($isNullable) {
                        $filters[ExistsFilter::SERVICE_NAME][$attribute] = ExistsFilter::QUERY_PARAMETER_KEY;
                    }
                    break;
                case 'date':
                case 'datetime':
                case 'datetimetz':
                case 'time':
                    $filters[SearchFilterExact::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_EXACT;
                    $filters[SearchFilterStart::SERVICE_NAME][$attribute] = SearchFilter::STRATEGY_START;
                    $filters[DateFilter::SERVICE_NAME][$attribute] = null;
                    $filters[NotEqualFilter::SERVICE_NAME][$attribute] = null;
                    $isNullable = $this->isNullableField($resourceClass, $attribute);
                    if ($isNullable) {
                        $filters[ExistsFilter::SERVICE_NAME][$attribute] = ExistsFilter::QUERY_PARAMETER_KEY;
                    }
                    break;
                default:
                    // Value object and ClassMetadataInfo::ONE_TO_MANY
            }
        }

        return array_filter($filters, function ($value) {
            return count($value) > 0;
        });
    }

    private function isNullableField(string $resourceClass, string $attribute)
    {
        $metadata = $this->getAttributeMetadata($resourceClass, $attribute);
        if (!$metadata) {
            return false;
        }

        $nullable = $metadata['nullable'] ?? false;

        return $nullable;
    }

    private function isForeignKeyNullable(string $resourceClass, string $attribute)
    {
        $metadata = $this->getAttributeMetadata($resourceClass, $attribute);
        if (!$metadata) {
            return false;
        }

        $nullable = $metadata['joinColumns'][0]['nullable'] ?? true;

        return $nullable;
    }

    private function getFieldType(string $resourceClass, string $attribute)
    {
        $metadata = $this->getAttributeMetadata($resourceClass, $attribute);
        if (!$metadata) {
            return null;
        }

        return $metadata['type'];
    }

    /**
     * @return bool|null
     */
    private function isId(string $resourceClass, string $attribute)
    {
        $metadata = $this->getAttributeMetadata($resourceClass, $attribute);

        if (is_null($metadata)) {
            return false;
        }

        if (isset($metadata['id'])) {
            return $metadata['id'] ?? null;
        }

        return false;
    }

    private function getAttributeMetadata(string $resourceClass, string $attribute)
    {
        $manager = $this->managerRegistry->getManagerForClass($resourceClass);
        if (!$manager) {
            return null;
        }

        /** @var ClassMetadata $metadata */
        $metadata = $manager->getClassMetadata($resourceClass);

        /** @var mixed[] $items */
        $items = $metadata->getMetadataValue('fieldMappings') ?? [];
        $items += array_filter(
            $metadata->getMetadataValue('associationMappings'),
            function ($fld) {
                return $fld['type'] == ClassMetadataInfo::MANY_TO_ONE;
            }
        );

        if (!array_key_exists($attribute, $items)) {
            return null;
        }

        return $items[$attribute];
    }

    private function getEntityAttributes(string $resourceClass, ResourceMetadata $resourceMetadata): array
    {
        $allAttributes = $this->propertyNameCollectionFactory->create(
            $resourceClass,
            ['expandSubResources' => true]
        );

        $fkAttributes = array_filter(
            iterator_to_array($allAttributes->getIterator()),
            function ($attr) use ($resourceClass) {
                $fldType = $this->getFieldType($resourceClass, $attr);

                return $fldType === ClassMetadataInfo::MANY_TO_ONE;
            }
        );

        return array_merge(
            iterator_to_array($allAttributes->getIterator()),
            $fkAttributes
        );
    }
}
