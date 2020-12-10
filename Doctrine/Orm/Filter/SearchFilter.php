<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Api\IriConverterInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter as BaseSearchFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use ApiPlatform\Core\Metadata\Resource\ResourceMetadata;
use Doctrine\DBAL\Types\Type;
use Doctrine\ORM\QueryBuilder;
use Ivoz\Core\Domain\Model\Helper\DateTimeHelper;
use Psr\Log\LoggerInterface;
use Symfony\Bridge\Doctrine\ManagerRegistry;
use Symfony\Component\PropertyAccess\PropertyAccessorInterface;

/**
 * @inheritdoc
 */
class SearchFilter extends BaseSearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search';

    use FilterTrait;

    protected $requestStack;

    public function __construct(
        ManagerRegistry $managerRegistry,
        $requestStack = null,
        IriConverterInterface $iriConverter,
        PropertyAccessorInterface $propertyAccessor = null,
        LoggerInterface $logger = null,
        array $properties = null,
        ResourceMetadataFactoryInterface $resourceMetadataFactory
    ) {
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        $this->requestStack = $requestStack;
        parent::__construct(
            $managerRegistry,
            $requestStack,
            $iriConverter,
            $propertyAccessor,
            $logger,
            $properties
        );
    }

    /**
     * @param string $resourceClass
     * @return array
     */
    public function getDescription(string $resourceClass, bool $addDefault = true): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());
        $description = [];

        $properties = $this->properties;
        if (null === $properties) {
            $properties = array_fill_keys($this->getClassMetadata($resourceClass)->getFieldNames(), null);
        }

        foreach ($properties as $property => $strategy) {
            if (!$this->isPropertyMapped($property, $resourceClass, true)) {
                continue;
            }

            if ($this->isPropertyNested($property, $resourceClass)) {
                $propertyParts = $this->splitPropertyParts($property, $resourceClass);
                $field = $propertyParts['field'];
                $metadata = $this->getNestedMetadata($resourceClass, $propertyParts['associations']);
            } else {
                $field = $property;
                $metadata = $this->getClassMetadata($resourceClass);
            }

            if ($metadata->hasField($field)) {
                $typeOfField = $this->getType($metadata->getTypeOfField($field));
                $strategy = $this->properties[$property] ?? self::STRATEGY_EXACT;
                $filterParameterNames = $addDefault
                    ? [$property]
                    : [];
                $filterParameterNames[] = $property.'[' . $strategy . ']';

                foreach ($filterParameterNames as $filterParameterName) {

                    $description[$filterParameterName] = [
                        'property' => $property,
                        'type' => $typeOfField,
                        'required' => false,
                        'strategy' => $strategy,
                    ];
                }
            } elseif ($metadata->hasAssociation($field)) {
                $filterParameterNames = [
                    $property,
                    $property.'[]',
                ];

                foreach ($filterParameterNames as $filterParameterName) {
                    $description[$filterParameterName] = [
                        'property' => $property,
                        'type' => 'string',
                        'required' => false,
                        'strategy' => self::STRATEGY_EXACT,
                    ];
                }
            }
        }

        return $description;
    }

    /**
     * Converts a Doctrine type in PHP type.
     *
     * @param string $doctrineType
     *
     * @return string
     */
    private function getType(string $doctrineType): string
    {
        switch ($doctrineType) {
            case Type::TARRAY:
                return 'array';
            case Type::BIGINT:
            case Type::INTEGER:
            case Type::SMALLINT:
                return 'int';
            case Type::BOOLEAN:
                return 'bool';
            case Type::DATE:
            case Type::TIME:
            case Type::DATETIME:
            case Type::DATETIMETZ:
                return \DateTimeInterface::class;
            case Type::FLOAT:
                return 'float';
        }

        if (\defined(Type::class.'::DATE_IMMUTABLE')) {
            switch ($doctrineType) {
                case Type::DATE_IMMUTABLE:
                case Type::TIME_IMMUTABLE:
                case Type::DATETIME_IMMUTABLE:
                case Type::DATETIMETZ_IMMUTABLE:
                    return \DateTimeInterface::class;
            }
        }

        return 'string';
    }


    /**
     * {@inheritdoc}
     */
    public function apply(
        QueryBuilder $queryBuilder,
        QueryNameGeneratorInterface $queryNameGenerator,
        string $resourceClass,
        string $operationName = null,
        array $context = []
    ) {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        $context['filters'] = $this->dateFiltersToUtc(
            $metadata,
            $context['filters']
        );

        return parent::apply($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $context);
    }

    /**
     * @inherit
     */
    protected function normalizeValues(array $values): array
    {
        foreach ($values as $key => $value) {
            if (!is_numeric($key) && $key !== self::STRATEGY_PARTIAL) {
                unset($values[$key]);
            }
        }

        return array_values($values);
    }

    protected function dateFiltersToUtc(ResourceMetadata $metadata, array $filters)
    {
        foreach ($filters as $field => $criteria) {
            if (!$this->isDateTime($metadata, $field)) {
                continue;
            }

            if (!is_scalar($criteria)) {
                continue;
            }

            $filters[$field] = $this->stringToUtc($criteria);
        }

        return $filters;
    }

    protected function stringToUtc($value)
    {
        $format = strlen(trim($value)) < strlen('Y-m-d H:i:s')
            ? 'Y-m-d'
            : 'Y-m-d H:i:s';

        return DateTimeHelper::stringToUtc(
            $value,
            $format,
            $this->getTimezone()
        );
    }

    /**
     * @param ResourceMetadata $metadata
     * @param string $field
     * @return bool|void
     */
    private function isDateTime(ResourceMetadata $metadata, string $field)
    {
        $filterFields = $metadata->getAttribute(
            'filterFields'
        );

        if (!array_key_exists(DateFilter::SERVICE_NAME, $filterFields)) {
            return;
        }
        $dateFilterFields = $filterFields[DateFilter::SERVICE_NAME];

        return array_key_exists(
            $field,
            $dateFilterFields
        );
    }

    /**
     * @return \DateTimeZone
     */
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
