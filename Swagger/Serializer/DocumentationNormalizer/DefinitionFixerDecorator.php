<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;
use ApiPlatform\Core\Metadata\Property\Factory\PropertyNameCollectionFactoryInterface;
use Ivoz\Core\Domain\Model\EntityInterface;
use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;
use ArrayObject;

class DefinitionFixerDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
{
    public function __construct(
        private NormalizerInterface $decoratedNormalizer,
        private PropertyMetadataFactoryInterface $propertyMetadataFactory,
        private PropertyNameCollectionFactoryInterface $propertyNameCollectionFactory,
    ) {
        $reflection = new \ReflectionClass($this->decoratedNormalizer);
        $property = $reflection->getProperty('propertyNameCollectionFactory');
        $property->setAccessible(true);
        $property->setValue(
            $this->decoratedNormalizer,
            $this->propertyNameCollectionFactory
        );
        $property->setAccessible(false);
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
        $resourceMapping = $this->getResourceMapping($object);

        $definitions = $response['definitions'];
        foreach ($definitions as $name => $definition) {

            $modelBaseNameEnd = str_contains($name, '-')
                ? strrpos($name, '-')
                : strlen($name);

            $modelBaseName = substr(
                $name,
                0,
                $modelBaseNameEnd
            );

            $fqdn = array_search(
                $modelBaseName,
                $resourceMapping
            );

            if ($fqdn === false) {
                continue;
            }

            $definitions[$name] = $this->fixDefinition(
                $fqdn,
                $definition
            );
        }

        $response['definitions'] = $definitions;

        return $response;
    }

    private function fixDefinition(string $fqdn, ArrayObject $definition): ArrayObject
    {
        foreach ($definition['properties'] as $propertyName => $property) {

            $propertyMetadata = $this->propertyMetadataFactory->create(
                $fqdn,
                $propertyName
            );

            if ($propertyMetadata->isIdentifier()) {

                $definition['properties'][$propertyName]['readOnly'] = true;
                $idPosition = array_search(
                    $propertyName,
                    $definition['required']
                );

                if ($idPosition !== false) {
                    unset($definition['required'][$idPosition]);
                    if (empty($definition['required'])) {
                        unset($definition['required']);
                    }
                }
            }

            if (isset($property['default'])) {
                switch($property['type']) {
                    case 'boolean':
                    case 'integer':
                        $property['default'] = intval($property['default']);
                        break;

                    case 'number':
                        $property['default'] = floatval($property['default']);
                        break;
                }

                $definition['properties'][$propertyName] = $property;
            }
        }

        return $definition;
    }

    /**
     * @return string[]
     */
    private function getResourceMapping(mixed $object): array
    {
        $resourceMapping = [];
        foreach ($object->getResourceNameCollection() as $resourceName) {

            $isEntity = in_array(
                EntityInterface::class,
                \class_implements($resourceName)
            );

            if (!$isEntity) {
                continue;
            }

            $resourceNameSegments = explode('\\', $resourceName);
            $resourceMapping[$resourceName] = end($resourceNameSegments);
        }

        return $resourceMapping;
    }
}
