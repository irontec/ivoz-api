<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;

class CustomParameterDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
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

        foreach ($response['paths'] as $name => $paths) {
            foreach ($paths as $path) {
                $pathArray = $this->setUploadParams(
                    $path->getArrayCopy()
                );

                $pathArray = $this->setPaginationParams(
                    $pathArray
                );

                $pathArray = $this->fixAutoinjectedBodyParam(
                    $pathArray,
                    $name
                );

                $path->exchangeArray($pathArray);
            }
        }

        return $response;
    }

    private function setUploadParams(array $pathArray): array
    {
        if (!array_key_exists('upload_parameters', $pathArray)) {
            return $pathArray;
        }

        if (empty($pathArray['upload_parameters'])) {
            unset($pathArray['upload_parameters']);

            return $pathArray;
        }

        array_push(
            $pathArray['parameters'],
            ...$pathArray['upload_parameters']
        );
        unset($pathArray['upload_parameters']);
        array_unshift($pathArray['consumes'], 'multipart/form-data');
        foreach ($pathArray['parameters'] as $key => $parameter) {
            if ($parameter['in'] === 'body') {
                $parameter['in'] = 'formData';
            }

            if (isset($parameter['schema'])) {
                // Complex types are not supported with formData parameters yet
                // @see https://github.com/swagger-api/swagger-editor/issues/1156
                unset($parameter['schema']);
                $parameter['type'] = 'string';
            }

            $pathArray['parameters'][$key] = $parameter;
        }

        return $pathArray;
    }

    private function setPaginationParams(array $pathArray): array
    {
        if (!array_key_exists('pagination_parameters', $pathArray)) {
            return $pathArray;
        }

        array_push(
            $pathArray['parameters'],
            ...$pathArray['pagination_parameters']
        );
        unset($pathArray['pagination_parameters']);

        return $pathArray;
    }

    private function fixAutoinjectedBodyParam(array $pathArray, string $reqPath): array
    {
        /**
         * Api platform is injecting a body param if none
         * and this is causing issues with formData params
         * https://github.com/api-platform/core/pull/3123
         */
        $parameters = $pathArray['parameters'] ?? [];
        if (empty($parameters)) {
            return $pathArray;
        }

        if (current($parameters)['in'] !== end($parameters)['in']) {
            array_pop($parameters);
        }

        // Filter parameters not found in path
        foreach ($parameters as $k => $param) {
            if ($param['in'] !== 'path') {
                continue;
            }

            if (strpos($reqPath, '{' . $param['name'] . '}')) {
                continue;
            }

            unset($parameters[$k]);
        }

        $pathArray['parameters'] = array_values($parameters);

        return $pathArray;
    }
}
