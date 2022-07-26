<?php

namespace Ivoz\Api\Swagger\Serializer\DocumentationNormalizer;

use ApiPlatform\Core\Bridge\Doctrine\Common\Filter\ExistsFilterInterface;
use ApiPlatform\Core\Bridge\Doctrine\Common\Filter\RangeFilterInterface;
use ApiPlatform\Core\Bridge\Doctrine\Common\Filter\SearchFilterInterface;
use Ivoz\Core\Domain\Model\EntityInterface;
use Symfony\Component\PropertyInfo\Type;
use Symfony\Component\Serializer\Normalizer\CacheableSupportsMethodInterface;
use Symfony\Component\Serializer\Normalizer\NormalizerInterface;
use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;

class SearchFilterDecorator implements NormalizerInterface, CacheableSupportsMethodInterface
{
    /**
     * @var NormalizerInterface
     */
    protected $decoratedNormalizer;

    /**
     * @var PropertyMetadataFactoryInterface
     */
    private $propertyMetadataFactory;

    /**
     * @var \ArrayObject
     */
    protected $definitions;

    public function __construct(
        NormalizerInterface $decoratedNormalizer,
        PropertyMetadataFactoryInterface $propertyMetadataFactory
    ) {
        $this->decoratedNormalizer = $decoratedNormalizer;
        $this->propertyMetadataFactory = $propertyMetadataFactory;
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

        $response = $this->decoratedNormalizer->normalize(...func_get_args());
        $this->definitions = $response['definitions'];
        $response['paths'] = $this->fixPathParameters($response['paths'], $resourceMapping);

        return $response;
    }

    private function fixPathParameters(\ArrayObject $paths, array $resourceMapping)
    {
        foreach ($paths as $name => $path) {
            if (strpos($name, '{') !== false) {
                continue;
            }

            if (!isset($path['get'])) {
                continue;
            }

            if (!isset($path['get']['responses']['200']['schema']['items'])) {
                continue;
            }

            $responseDefinitionName = $path['get']['responses']['200']['schema']['items']['$ref'];
            $responseModel = $this->getDefinitionByRef(
                $responseDefinitionName
            );

            if (!isset($responseModel['properties']) || is_null($responseModel['properties'])) {
                continue;
            }

            $responseDefinitionSegments = explode('-', $this->cleanRef($responseDefinitionName));
            $responseEntityName = array_search(
                $responseDefinitionSegments[0],
                $resourceMapping
            );
            $path['get']['parameters'] = $this->filterPropertiesIntoParameters(
                $path['get']['parameters'],
                $responseModel['properties'],
                $responseEntityName
            );

            $path['get']['parameters'] = $this->appendPropertiesIntoParameters(
                $path['get']['parameters'],
                $responseModel['properties']
            );
        }

        return $paths;
    }

    /**
     * @param string $name
     * @return string
     */
    private function cleanRef(string $name)
    {
        $segments = explode('/', $name);

        return end($segments);
    }

    private function getDefinitionByRef(string $ref)
    {
        $model = $this->cleanRef($ref);

        return $this->definitions[$model];
    }

    private function filterPropertiesIntoParameters(
        array $parameters,
        array $properties,
        string $responseFqdn
    ) {
        $propertyNames = array_keys($properties);
        $propertyParameters = array_filter(
            $parameters,
            function (array $item) use ($propertyNames, $responseFqdn) {
                $name = $item['name'] ?? '';
                preg_match(
                    '/^([^[]+)(.*)/',
                    $name,
                    $nameMatch
                );

                if (in_array($nameMatch[1], ['_order', 'exists'], true)) {
                    $fld = substr($nameMatch[2], 1, -1);
                    $segments = explode('.', $fld);
                    return in_array(
                        $segments[0],
                        $propertyNames
                    );
                }

                if ($name[0] === '_') {
                    return true;
                }

                $responseModelProperty = in_array($nameMatch[1], $propertyNames, true);
                if ($responseModelProperty) {
                    return true;
                }

                if (strpos($nameMatch[1], '.')) {
                    $segments = explode('.', $nameMatch[1]);
                    if (in_array($segments[0], $propertyNames, true)) {
                        return true;
                    }
                }

                // Allow FKs
                $property = $this->propertyMetadataFactory->create(
                    $responseFqdn,
                    $nameMatch[1]
                );
                $propertyType = $property->getType();
                $propertyTypeClasName = $propertyType
                    ? $propertyType->getClassName()
                    : '';
                $isEntity = $propertyTypeClasName && in_array(
                    EntityInterface::class,
                    \class_implements($propertyTypeClasName)
                );
                if ($isEntity) {
                    return true;
                }

                return false;
            }
        );

        return array_values($propertyParameters);
    }

    private function appendPropertiesIntoParameters(array $parameters, array $properties, $prefix = '')
    {
        $propertyParameters = array_filter(
            $parameters,
            function (array $item) {
                $name = $item['name'] ?? '';
                return $name[0] !== '_';
            }
        );

        if (empty($propertyParameters)) {
            return $parameters;
        }

        foreach ($properties as $name => $values) {
            if ($name === 'id') {
                continue;
            }

            if (array_key_exists('$ref', $values->getArrayCopy())) {
                $responseModel = $this->getDefinitionByRef($values['$ref']);
                if (!is_array($responseModel['properties'])) {
                    continue;
                }
                $parameters = $this->appendPropertiesIntoParameters(
                    $parameters,
                    $responseModel['properties'],
                    $name . '.'
                );
                continue;
            }

            $parameterExists = array_filter($parameters, function ($item) use ($prefix, $name) {

                if (str_starts_with($item['name'], $prefix . $name . '.')) {
                    return true;
                }

                return $item['name'] === ($prefix . $name);
            });

            if (!empty($parameterExists)) {
                continue;
            }

            $skip =
                !isset($values['type'])
                || is_null($values['type'])
                || $values['type'] === Type::BUILTIN_TYPE_ARRAY;

            if ($skip) {
                continue;
            }

            $parameters[] = [
                'name' => $prefix . $name,
                'in' => 'query',
                'required' => false,
                'type' => $values['type']
            ];
        }

        uasort(
            $parameters,
            function (array $item1, array $item2) {
                $str1 = $item1['name'] ?? '';
                $str2 = $item2['name'] ?? '';

                if ($str1[0] === '_' && $str2[0] !== '_') {
                    return 1;
                }

                if ($str1[0] !== '_' && $str2[0] === '_') {
                    return -1;
                }

                $isOrderAttribute1 = strpos($str1, '_order') === 0;
                $isOrderAttribute2 = strpos($str2, '_order') === 0;

                if (!$isOrderAttribute1 && $isOrderAttribute2) {
                    return 1;
                }

                if ($isOrderAttribute1 && !$isOrderAttribute2) {
                    return -1;
                }

                /** @phpstan-ignore-next-line */
                if ($isOrderAttribute1 || $isOrderAttribute2) {
                    return strnatcmp($str1, $str2);
                }

                if (!str_contains($str1, '[') || !str_contains($str2, '[')) {
                    return strnatcmp($str1, $str2);
                }

                $pattern = '/([^\[]+)\[(.*)\]/';
                preg_match($pattern, $str1, $str1Segments);
                preg_match($pattern, $str2, $str2Segments);

                if (!$str1Segments || !$str2Segments) {
                    return strnatcmp($str1, $str2);
                }

                if ($str1Segments[1] !== $str2Segments[1]) {
                    return strnatcmp($str1, $str2);
                }

                $sortedFilters = [
                    SearchFilterInterface::STRATEGY_EXACT,
                    SearchFilterInterface::STRATEGY_START,
                    SearchFilterInterface::STRATEGY_PARTIAL,
                    SearchFilterInterface::STRATEGY_END,

                    ExistsFilterInterface::QUERY_PARAMETER_KEY,

                    RangeFilterInterface::PARAMETER_GREATER_THAN,
                    RangeFilterInterface::PARAMETER_GREATER_THAN_OR_EQUAL,
                    RangeFilterInterface::PARAMETER_LESS_THAN,
                    RangeFilterInterface::PARAMETER_LESS_THAN_OR_EQUAL,

                    RangeFilterInterface::PARAMETER_BETWEEN,
                ];

                $prio1 = array_search($str1Segments[2], $sortedFilters);
                $prio2 = array_search($str2Segments[2], $sortedFilters);

                if (false === $prio1 || false === $prio2) {
                    return strnatcmp($str1, $str2);
                }

                if ($prio1 < $prio2) {
                    return -1;
                }

                if ($prio1 > $prio2) {
                    return 1;
                }

                return 0;
            }
        );

        return array_values(
            $parameters
        );
    }
}
