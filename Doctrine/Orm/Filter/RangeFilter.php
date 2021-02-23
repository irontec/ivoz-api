<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\RangeFilter as BaseRangeFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\QueryBuilder;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;

/**
 * @inheritdoc
 */
class RangeFilter extends BaseRangeFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.range';

    use FilterTrait;

    public function __construct(
        ManagerRegistry $managerRegistry,
        ?RequestStack $requestStack = null,
        LoggerInterface $logger = null,
        array $properties = null,
        ResourceMetadataFactoryInterface $resourceMetadataFactory,
        NameConverterInterface $nameConverter = null
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
    public function getDescription(string $resourceClass): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        return $this->filterDescription(
            parent::getDescription($resourceClass)
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
}
