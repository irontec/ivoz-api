<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

/**
 * @inheritdoc
 */
class SearchFilterEnd extends SearchFilter
{
    const SERVICE_NAME = 'ivoz.api.filter.search_end';

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
            if ($key !== self::STRATEGY_END) {
                unset($values[$key]);
            }
        }

        $arrayFilterValues =
            is_array($values)
            && array_key_exists(self::STRATEGY_END, $values)
            && is_array($values[self::STRATEGY_END]);

        if ($arrayFilterValues) {
            return array_values($values[self::STRATEGY_END]);
        }

        return array_values($values);
    }
}
