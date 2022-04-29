<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use Ivoz\Core\Application\DataTransferObjectInterface;
use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;

class ReferenceFixerDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
{
    /**
     * @var NormalizerInterface
     */
    protected $decoratedNormalizer;

    public function __construct(
        NormalizerInterface $decoratedNormalizer
    ) {
        $this->decoratedNormalizer = $decoratedNormalizer;
    }

    /**
     * {@inheritdoc}
     */
    public function hasCacheableSupportsMethod(): bool
    {
        return
            $this->decoratedNormalizer instanceof CacheableSupportsMethodInterface
            && $this->decoratedNormalizer->hasCacheableSupportsMethod();
    }

    /**
     * {@inheritdoc}
     */
    public function supportsNormalization($data, string $format = null)
    {
        return $this->decoratedNormalizer->supportsNormalization(...func_get_args());
    }

    /**
     * {@inheritdoc}
     */
    public function normalize($object, string $format = null, array $context = [])
    {
        $response = $this->decoratedNormalizer->normalize(...func_get_args());
        $response['definitions'] = $this->fixRelationReferences($response['definitions']);

        return $response;
    }

    private function isEntity($resourceName)
    {
        return !strpos($resourceName, '_');
    }

    private function hasContext($definitionName)
    {
        $segments = explode('-', $definitionName);

        return count($segments) > 1;
    }

    private function fixRelationReferences(\ArrayObject $definitions)
    {
        $definitionKeys = array_keys($definitions->getArrayCopy());
        foreach ($definitionKeys as $key) {
            if (!$this->isEntity($key)) {
                if ($this->hasContext($key)) {
                    $root = current(
                        explode('-', $key)
                    );
                    if (!isset($definitions[$root])) {
                        $definitions[$root] = $definitions[$key];
                    }
                    unset($definitions[$key]);
                }
                continue;
            }

            if (!array_key_exists('properties', $definitions[$key]->getArrayCopy())) {
                continue;
            }

            $context = explode('-', $key);
            foreach ($definitions[$key]['properties'] as $propertyKey => $property) {
                $definitions[$key]['properties'][$propertyKey] = $this->fixRelationProperty(
                    $property,
                    $context[1] ?? '',
                );
                if (is_null($definitions[$key]['properties'][$propertyKey])) {
                    unset($definitions[$key]['properties'][$propertyKey]);
                }
            }
        }

        return $definitions;
    }

    private function fixRelationProperty($property, $context = null)
    {
        $arrayProperty = $property->getArrayCopy();
        $isCollection = array_key_exists('items', $arrayProperty);
        $isReference = array_key_exists('$ref', $arrayProperty);
        $isArrayReference = array_key_exists('items', $arrayProperty) && array_key_exists('$ref', $arrayProperty['items']);

        if (!($isCollection || $isReference)) {
            return $property;
        }

        if ($isReference) {
            return $this->setContext($property, $context);
        }

        if ($isArrayReference) {
            return $this->setContext(
                $property,
                DataTransferObjectInterface::CONTEXT_SIMPLE
            );
        }

        $hasRefAttr = array_key_exists('$ref', $property['items']);
        $hasTypeAttr = array_key_exists('type', $property['items']);

        if (!$hasRefAttr && !$hasTypeAttr) {
            return null;
        }

        if ($hasRefAttr) {
            $property['items'] = $this->setContext($property['items'], $context);
        }

        return $property;
    }

    private function setContext($property, $context)
    {
        $noSublevelContexts = [
            DataTransferObjectInterface::CONTEXT_EMPTY,
            DataTransferObjectInterface::CONTEXT_SIMPLE,
            DataTransferObjectInterface::CONTEXT_COLLECTION
        ];

        $isCollection = ($property['type'] ?? null)  === 'array';
        if ($this->isEntity($property['$ref']) && in_array($context, $noSublevelContexts) && !$isCollection) {
            unset($property['$ref']);
            $property['type'] = 'integer';

            return $property;
        }

        if ($property['$ref']) {
            $refSegments = explode('-', $property['$ref']);
            $property['$ref'] = $refSegments[0];
        } else if ($isCollection && $property['items']['$ref']) {
            $refSegments = explode('-', $property['items']['$ref']);
            $property['items']['$ref'] = $refSegments[0];
        }

        $arrayProperty = is_array($property)
            ? $property
            : $property->getArrayCopy();

        if (array_key_exists('description', $arrayProperty) && !$isCollection) {
            unset($property['description']);
        }

        return $property;
    }
}
