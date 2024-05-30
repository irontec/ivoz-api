<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;

class RequiredAttributeFixerDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
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

        foreach ($response['definitions'] as $modelName => $spec) {
            $requiredFlds = $spec['required'] ?? [];
            if (empty($requiredFlds)) {
                continue;
            }

            $filteredRequiredFlds = [];
            foreach ($requiredFlds as $requiredFld) {
                $isReadonly = $spec['properties'][$requiredFld]['readOnly'] ?? false;
                if (!$isReadonly) {
                    $filteredRequiredFlds[] = $requiredFld;
                }
            }

            if (empty($filteredRequiredFlds)) {
                unset($response['definitions'][$modelName]['required']);
                continue;
            }

            $response['definitions'][$modelName]['required'] = $filteredRequiredFlds;
        }

        return $response;
    }
}
