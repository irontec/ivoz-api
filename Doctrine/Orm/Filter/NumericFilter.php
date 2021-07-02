<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\NumericFilter as BaseNumericFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\QueryBuilder;
use Psr\Log\LoggerInterface;

/**
 * @inheritdoc
 */
class NumericFilter extends BaseNumericFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.numeric';

    use FilterTrait;

    public function __construct(
        ManagerRegistry $managerRegistry,
        $requestStack = null,
        LoggerInterface $logger = null,
        array $properties = null,
        ResourceMetadataFactoryInterface $resourceMetadataFactory
    ) {
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        parent::__construct($managerRegistry, $requestStack, $logger, $properties);
    }

    /**
     * {@inheritdoc}
     */
    public function getDescription(string $resourceClass): array
    {
        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $this->overrideProperties($metadata->getAttributes());

        foreach ($this->properties as $key => $val) {

        }

        $description = $this->filterDescription(
            parent::getDescription($resourceClass)
        );

        $metadata = $this->getClassMetadata($resourceClass);
        foreach ($description as $fld => $spec) {
            if (! $metadata->isIdentifier($fld)) {
                continue;
            }

            $arrayFldName = $fld . '[]';
            $description[$arrayFldName] = $description[$fld];
            $description[$arrayFldName]['property'] = $arrayFldName;
            unset($description[$fld]);
        }

        return $description;
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
