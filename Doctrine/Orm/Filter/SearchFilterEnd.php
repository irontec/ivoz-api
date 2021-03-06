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
    protected function normalizeValues(array $values): array
    {
        foreach ($values as $key => $value) {
            if ($key !== self::STRATEGY_END) {
                unset($values[$key]);
            }
        }

        return array_values($values);
    }
}
