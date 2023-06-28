<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use Doctrine\ORM\QueryBuilder;

/**
 * @inheritdoc
 */
class SearchFilterStart extends SearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search_start';

    public function apply(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null, array $context = [])
    {
        $contextCopy = (new \ArrayObject($context))->getArrayCopy();
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

        return array_values($values);
    }
}
