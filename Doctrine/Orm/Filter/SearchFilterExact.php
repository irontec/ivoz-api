<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

/**
 * @inheritdoc
 */
class SearchFilterExact extends SearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search_exact';

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
            if ($key !== self::STRATEGY_EXACT && !is_numeric($key)) {
                unset($values[$key]);
            }
        }

        if (empty($values)) {
            return null;
        }

        return array_values($values);
    }
}
