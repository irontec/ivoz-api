<?php

namespace Ivoz\Api\Doctrine\Orm\Filter;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use ApiPlatform\Core\Exception\InvalidArgumentException;
use Doctrine\ORM\QueryBuilder;

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

    protected function addWhereByStrategy(string $strategy, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $alias, string $field, $values, bool $caseSensitive)
    {
        $multipleValues = is_array($values) && is_array($values[0]);
        if (! $multipleValues) {
            return parent::addWhereByStrategy($strategy, $queryBuilder, $queryNameGenerator, $alias, $field, $values, $caseSensitive);
        }

        $wrapCase = $this->createWrapCase($caseSensitive);
        $valueParameter = ':'.$queryNameGenerator->generateParameterName($field);
        $aliasedField = sprintf('%s.%s', $alias, $field);

        $queryBuilder
            ->andWhere($queryBuilder->expr()->in($wrapCase($aliasedField), $valueParameter))
            ->setParameter($valueParameter, $caseSensitive ? $values[0] : array_map('strtolower', $values[0]));
    }
}
