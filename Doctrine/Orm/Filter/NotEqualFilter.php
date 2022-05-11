<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractContextAwareFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\ORM\QueryBuilder;
use Psr\Log\LoggerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\PropertyInfo\Type;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;

final class NotEqualFilter extends AbstractContextAwareFilter
{
    use FilterTrait;

    public const SERVICE_NAME = 'ivoz.api.filter.not_equal';
    public const STRATEGY = 'neq';

    public function __construct(
        ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack = null,
        LoggerInterface $logger = null,
        array $properties = null,
        NameConverterInterface $nameConverter = null,
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
        string $operationName = null,
        array $context = []
    ) {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        return parent::apply($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $context);
    }

    protected function filterProperty(string $property, $value, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {
        // otherwise filter is applied to order and page as well
        if (
            !$this->isPropertyEnabled($property, $resourceClass) ||
            !$this->isPropertyMapped($property, $resourceClass)
        ) {
            return;
        }

        $values = $this->normalizeValues((array) $value, $property);
        if (empty($values)) {
            return;
        }

        foreach ($values as $val) {
            $parameterName = $queryNameGenerator->generateParameterName($property); // Generate a unique parameter name to avoid collisions with other filters

            $queryBuilder
                ->andWhere(sprintf('o.%s != :%s', $property, $parameterName))
                ->setParameter($parameterName, $val);
        }
    }

    public function getDescription(string $resourceClass): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        if (!$this->properties) {
            return [];
        }

        $description = [];
        foreach ($this->properties as $property => $strategy) {
            $name = $property.'[neq]';
            $description[$name] = [
                'property' => $property,
                'type' => Type::BUILTIN_TYPE_STRING,
                'required' => false,
            ];
        }

        return $description;
    }

    /**
     * @inherit
     */
    private function normalizeValues(array $values, string $property): array
    {
        foreach ($values as $key => $value) {
            if ($key !== self::STRATEGY) {
                unset($values[$key]);
            }
        }

        $response = array_key_exists(self::STRATEGY, $values)
            ? $values[self::STRATEGY]
            : [];

        return array_values((array) $response);
    }
}
