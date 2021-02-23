<?php

namespace Ivoz\Api\Json\Serializer\Normalizer;

use ApiPlatform\Core\Api\ResourceClassResolverInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use ApiPlatform\Core\Metadata\Resource\ResourceMetadata;
use Doctrine\ORM\Proxy\Proxy;
use Ivoz\Api\Entity\Metadata\Property\Factory\PropertyNameCollectionFactory;
use Ivoz\Api\Entity\Serializer\Normalizer\DateTimeNormalizerInterface;
use Ivoz\Core\Application\DataTransferObjectInterface;
use Ivoz\Core\Application\Service\Assembler\DtoAssembler;
use Ivoz\Core\Domain\Model\EntityInterface;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;

/**
 * Based on ApiPlatform\Core\JsonLd\Serializer\ItemNormalizer
 */
class EntityNormalizer implements NormalizerInterface
{
    const FORMAT = 'json';

    protected $resourceClassResolver;
    private $resourceMetadataFactory;
    private $dtoAssembler;
    private $dateTimeNormalizer;
    protected $propertyNameCollectionFactory;
    protected $tokenStorage;

    public function __construct(
        ResourceMetadataFactoryInterface $resourceMetadataFactory,
        ResourceClassResolverInterface $resourceClassResolver,
        DtoAssembler $dtoAssembler,
        DateTimeNormalizerInterface $dateTimeNormalizer,
        PropertyNameCollectionFactory $propertyNameCollectionFactory,
        TokenStorageInterface $tokenStorage
    ) {
        $this->resourceClassResolver = $resourceClassResolver;
        $this->resourceMetadataFactory = $resourceMetadataFactory;
        $this->dtoAssembler = $dtoAssembler;
        $this->dateTimeNormalizer = $dateTimeNormalizer;
        $this->propertyNameCollectionFactory = $propertyNameCollectionFactory;
        $this->tokenStorage = $tokenStorage;
    }

    /**
     * {@inheritdoc}
     */
    public function supportsNormalization($data, $format = null)
    {
        return
            static::FORMAT === $format
            && $this->isSupportedClass($data);
    }

    protected function isSupportedClass($data)
    {
        return
            $data instanceof EntityInterface
            || $data instanceof DataTransferObjectInterface;
    }

    /**
     * {@inheritdoc}
     */
    public function normalize($object, $format = null, array $context = [])
    {
        if ($object instanceof DataTransferObjectInterface) {
            return $this->fromDto(
                $object,
                $context
            );
        }

        if (!$object instanceof EntityInterface) {
            throw new \Exception('Object must implement EntityInterface or DataTransferObjectInterface');
        }

        if (isset($context['item_operation_name']) && $context['item_operation_name'] === 'put') {
            $object = $this->initializeRelationships($object, []);
        }

        return $this->fromEntity(
            $object,
            $context
        );
    }

    private function initializeRelationships(EntityInterface $entity, array $propertyFilters)
    {
        $reflection = new \ReflectionClass($entity);
        $properties = $reflection->getProperties();

        foreach ($properties as $property) {
            if (!empty($propertyFilters) && !in_array($property->getName(), $propertyFilters)) {
                continue;
            }

            $property->setAccessible(true);
            $propertyValue = $property->getValue($entity);
            if ($propertyValue instanceof Proxy && !$propertyValue->__isInitialized()) {
                $propertyValue->__load();
            }
        }

        return $entity;
    }

    private function fromEntity(
        EntityInterface $entity,
        array $context,
        $isSubresource = false
    ) {
        $resourceClass = $entity instanceof Proxy
            ? get_parent_class($entity)
            : get_class($entity);

        $resourceMetadata = $this->resourceMetadataFactory->create($resourceClass);

        $isItemOperation = isset($context['item_operation_name']);
        $itemOperationMethod = $isItemOperation
            ? $resourceMetadata->getItemOperationAttribute($context['item_operation_name'], 'method')
            : null;

        $defaultDepth = $isItemOperation && ('PUT' !== $itemOperationMethod)
            ? 1
            : 0;

        $depth = isset($context['item_operation_name'])
            ? $resourceMetadata->getItemOperationAttribute($context['item_operation_name'], 'depth', $defaultDepth)
            : $resourceMetadata->getCollectionOperationAttribute($context['collection_operation_name'], 'depth', $defaultDepth);

        if ($depth > 0) {
            $dtoClass = $resourceClass . 'Dto';
            $normalizationContext = $context['operation_normalization_context'] ?? $context['operation_type'] ?? '';
            $propertyMap = $dtoClass::getPropertyMap($normalizationContext);
            $this->initializeRelationships($entity, array_values($propertyMap));
        }
        $dto = $this->dtoAssembler->toDto(
            $entity,
            $depth,
            $context['operation_normalization_context'] ?? null
        );

        return $this->normalizeDto(
            $dto,
            $context,
            $isSubresource,
            $depth,
            $resourceClass,
            $resourceMetadata
        );
    }

    private function fromDto(
        DataTransferObjectInterface $dto,
        array $context,
        $isSubresource = false
    ) {
        $entityClass = substr(
            get_class($dto),
            0,
            -3
        );

        $resourceMetadata = $this->resourceMetadataFactory->create(
            $entityClass
        );

        $depth = isset($context['item_operation_name'])
            ? $resourceMetadata->getItemOperationAttribute($context['item_operation_name'], 'depth', 1)
            : $resourceMetadata->getCollectionOperationAttribute($context['collection_operation_name'], 'depth', 0);

        if ($depth > 0) {
            $normalizationContext = $context['operation_normalization_context'] ?? $context['operation_type'] ?? '';
            $propertyMap = $dto->getPropertyMap($normalizationContext);
        }

        return $this->normalizeDto(
            $dto,
            $context,
            $isSubresource,
            $depth,
            $entityClass,
            $resourceMetadata
        );
    }

    /**
     * @param DataTransferObjectInterface $dto
     * @param array $context
     * @param bool $isSubresource
     * @param int $depth
     * @param string $resourceClass
     * @param ResourceMetadata $resourceMetadata
     * @return array
     */
    protected function normalizeDto(
        $dto,
        array $context,
        $isSubresource,
        $depth,
        $resourceClass,
        $resourceMetadata
    ): array {
        $normalizationContext = $context['operation_normalization_context'] ?? null;
        if (!$normalizationContext) {
            $isPostOperation =
                isset($context['collection_operation_name'])
                && $context['collection_operation_name'] === 'post';

            $normalizationContext = $isPostOperation
                ? ''
                : $context['operation_type'];
        }
        $forcedAttributes = $context['attributes'] ?? [];

        $token = $this->tokenStorage->getToken();
        $roles = $token
            ? $token->getRoleNames()
            : [];
        $role = current($roles);

        $rawData = $this->filterProperties(
            $dto->normalize($normalizationContext, $role),
            $resourceClass,
            $forcedAttributes,
            ['serializer_groups' => [$normalizationContext]]
        );

        foreach ($rawData as $key => $value) {
            if ($value instanceof DataTransferObjectInterface) {
                if ($depth === 0) {
                    $rawData[$key] = $rawData[$key]->getId();
                    continue;
                }

                $embeddedContext = [
                    'item_operation_name' => 'get',
                    'operation_type' => 'item',
                    'request_uri' => $context['request_uri']
                ];

                try {
                    $resourceClass = substr(get_class($value), 0, strlen('dto') * -1);
                    $resourceMetadata = $this
                        ->resourceMetadataFactory
                        ->create($resourceClass);

                    $rawData[$key] = $this->normalizeDto(
                        $value,
                        $embeddedContext,
                        true,
                        $depth - 1,
                        $resourceClass,
                        $resourceMetadata
                    );
                } catch (\Exception $e) {
                    unset($rawData[$key]);
                }
            } elseif ($value instanceof \DateTimeInterface) {
                $rawData[$key] = $this->dateTimeNormalizer->normalize(
                    $resourceClass,
                    $key,
                    $value
                );
            }
        }

        return $rawData;
    }

    private function filterProperties(array $data, string $resourceClass, $requestedAttributes, $options)
    {
        $mappedProperties = [];
        $propertyNameCollection = $this->propertyNameCollectionFactory->create(
            $resourceClass,
            $options
        );
        foreach ($propertyNameCollection as $property) {
            $mappedProperties[] = $property;
        }

        if (!empty($requestedAttributes)) {
            $mappedProperties = array_intersect($mappedProperties, $requestedAttributes);
        }

        return array_filter(
            $data,
            function ($property) use ($mappedProperties) {
                return in_array($property, $mappedProperties);
            },
            ARRAY_FILTER_USE_KEY
        );
    }
}
