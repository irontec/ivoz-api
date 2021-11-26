<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\ExistsFilter as BaseExistsFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\ORM\QueryBuilder;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;

/**
 * @inheritdoc
 */
class ExistsFilter extends BaseExistsFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.exists';

    use FilterTrait;

    public function __construct(
        ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack = null,
        LoggerInterface $logger = null,
        array $properties = null,
        string $existsParameterName = self::QUERY_PARAMETER_KEY,
        NameConverterInterface $nameConverter = null,
        ResourceMetadataFactoryInterface $resourceMetadataFactory
    ) {
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        parent::__construct(
            $managerRegistry,
            $requestStack,
            $logger,
            $properties,
            $existsParameterName,
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

        $description = $this->addDeprecatedExistsFilters(
            parent::getDescription($resourceClass)
        );

        return $this->filterDescription(
            $description
        );
    }

    private function addDeprecatedExistsFilters(array $description)
    {
        $deprecatedDescription = [];
        foreach ($description as $key => $value) {
            [, $field] = explode('[', substr($key, 0, -1));
            $deprecatedKey = $field . '[exists]';
            $deprecatedValue = array_merge(
                $value,
                ['description' => 'deprecated']
            );

            $deprecatedDescription[$deprecatedKey] = $deprecatedValue;
        }

        return array_merge($deprecatedDescription, $description);
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
}
