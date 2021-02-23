<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;

class CollectionResponseHeaderFixedDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
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

        foreach ($response['paths'] as $paths) {
            foreach ($paths as $path) {
                $pathArray = $path->getArrayCopy();

                foreach ($pathArray['responses'] as $responseCode => $responseDef) {
                    if ($responseCode < 200 || $responseCode >= 300) {
                        continue;
                    }
                    if (!isset($responseDef['schema']['type'])) {
                        continue;
                    }
                    if ($responseDef['schema']['type'] !== 'array') {
                        continue;
                    }

                    $pathArray['responses'][$responseCode]['headers'] = [
                        'X-Total-Items' => ['type' => 'integer'],
                        'X-Total-Pages' => ['type' => 'integer'],
                        'X-First-Page' => ['type' => 'string'],
                        'X-Next-Page' => ['type' => 'string'],
                        'X-Last-Page' => ['type' => 'string'],
                    ];
                }

                $path->exchangeArray($pathArray);
            }
        }

        return $response;
    }
}
