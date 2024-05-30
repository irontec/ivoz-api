<?php

namespace Ivoz\Api\Swagger\Metadata\Property;

use ApiPlatform\Core\Api\IdentifiersExtractorInterface;
use Ivoz\Core\Domain\Model\EntityInterface;

class IdentifiersExtractor implements IdentifiersExtractorInterface
{
    protected $decoratedIdentifiersExtractor;

    public function __construct(
        IdentifiersExtractorInterface $decoratedIdentifiersExtractor
    ) {
        $this->decoratedIdentifiersExtractor = $decoratedIdentifiersExtractor;
    }

    /**
     * @inheritdoc
     */
    public function getIdentifiersFromItem($item): array
    {
        if ($item instanceof EntityInterface) {
            return $this->decoratedIdentifiersExtractor->getIdentifiersFromItem(
                ...func_get_args()
            );
        }

        return [''];
    }

    /**
     * {@inheritdoc}
     */
    public function getIdentifiersFromResourceClass(string $resourceClass): array
    {
        try {
            return $this->decoratedIdentifiersExtractor->getIdentifiersFromResourceClass(
                ...func_get_args()
            );
        } catch (\Exception $e) {
            return [''];
        }
    }
}
