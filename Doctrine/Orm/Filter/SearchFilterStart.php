<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Metadata\Resource\ResourceMetadata;
use Doctrine\DBAL\Driver\PDO\Exception;
use Doctrine\ORM\QueryBuilder;
use ApiPlatform\Core\Api\IdentifiersExtractorInterface;
use ApiPlatform\Core\Api\IriConverterInterface;
use ApiPlatform\Core\Metadata\Resource\Factory\ResourceMetadataFactoryInterface;
use Ivoz\Core\Domain\Model\Helper\DateTimeHelper;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\PropertyAccess\PropertyAccessorInterface;
use Symfony\Component\Serializer\NameConverter\NameConverterInterface;
use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;

/**
 * @inheritdoc
 */
class SearchFilterStart extends SearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search_start';

    public function apply(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null, array $context = [])
    {

        $contextCopy = (new \ArrayObject($context))->getArrayCopy();
        $contextFilters = $contextCopy['filters'];

        foreach ($contextCopy['filters'] as $field => $filters) {

            if (strpos($field, '_') === 0) {
                continue;
            }

            if (!is_array($filters)) {

                if (strpos($filters, '_') === 0) {
                    continue;
                }

                unset($contextCopy['filters'][$field]);
            } else if (is_array($filters)) {
                foreach ($filters as $filter => $value) {

                    if (strpos($filter, '_') === 0) {
                        continue;
                    }

                    if ($filter !== self::STRATEGY_START) {
                        unset($contextCopy['filters'][$field][$filter]);
                    }
                }

                if (empty($contextCopy['filters'][$field])) {
                    unset($contextCopy['filters'][$field]);
                }
            }
        }

        $metadata = $this->resourceMetadataFactory->create($resourceClass);
        $contextCopy['filters'] = $this->dateFiltersToUtc(
            $metadata,
            $contextFilters
        );

        return parent::apply($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $contextCopy);
    }

    /**
     * {@inheritdoc}
     */
    public function getDescription(string $resourceClass, bool $addDefault = false): array
    {
        return parent::getDescription($resourceClass, $addDefault);
    }

    /**
     * @inherit
     */
    protected function normalizeValues(array $values, string $property): ?array
    {
        foreach ($values as $key => $value) {
            if ($key !== self::STRATEGY_START) {
                unset($values[$key]);
            }
        }

        $isStrategyStartArray = isset($values[self::STRATEGY_START]) && is_array($values[self::STRATEGY_START]);
        if ($isStrategyStartArray) {
            return array_values($values[self::STRATEGY_START]);
        }

        return array_values($values);
    }

    protected function dateFiltersToUtc(ResourceMetadata $metadata, array $filters)
    {
        foreach ($filters as $field => $criteria) {
            if (!$this->isDateTime($metadata, $field)) {
                continue;
            }

            if (is_array($criteria)) {

                foreach ($criteria as $filter => $value) {

                    if (is_array($value)) {
                        $filters[$field][$filter] = array_map(
                            [$this, 'partialStringToUtc'],
                            $value
                        );
                    } else {
                        $filters[$field][$filter] = $this->partialStringToUtc($value);
                    }
                }

                continue;
            }

            $filters[$field] = $this->partialStringToUtc($criteria);
        }

        return $filters;
    }

    private function partialStringToUtc(string $value)
    {
        $match = [];
        $res = preg_match('/(\d{4}-\d{2}-\d{2})(?: ([0-9]{0,2})(?::([0-9]{0,2})(?::([0-9]{0,2}))?)?)/', $value, $match);

        if (!$res) {
            return $value;
        }

        $date = $match[1];

        $match = array_slice($match, 2);
        $timeParts = array_pad(
            $match,
            3,
            ""
        );

        $timeParts = array_map(
            function (string $value) {
                return str_pad($value, 2, "0", STR_PAD_RIGHT);
            },
            $timeParts
        );

        $utcDataTime = $this->stringToUtc(
            sprintf('%s %s:%s:%s', $date, ...$timeParts)
        );

        return substr(
            $utcDataTime,
            0,
            strlen($value)
        );
    }
}
