<?php

namespace Ivoz\Api\Entity\Serializer\Normalizer;

use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;
use Doctrine\DBAL\Types\Types as DBALType;
use Doctrine\ORM\EntityManagerInterface;
use Ivoz\Core\Infrastructure\Symfony\HttpFoundation\RequestDateTimeResolver;

class DateTimeNormalizer implements DateTimeNormalizerInterface
{
    private $classMetadataFactory;
    private $propertyMetadataFactory;
    private $requestDateTimeResolver;

    public function __construct(
        EntityManagerInterface $em,
        PropertyMetadataFactoryInterface $propertyMetadataFactory,
        RequestDateTimeResolver $requestDateTimeResolver
    ) {
        $this->classMetadataFactory = $em->getMetadataFactory();
        $this->propertyMetadataFactory = $propertyMetadataFactory;
        $this->requestDateTimeResolver = $requestDateTimeResolver;
    }

    /**
     * @param string $class
     * @param string $fieldName
     * @param \DateTime $value
     * @return string
     */
    public function normalize($class, $fieldName, \DateTimeInterface $value)
    {
        $targetClass = $this->getPropertyMappedClass($class, $fieldName);
        $isDateTime = $targetClass === 'DateTime';

        $hasTimeZone = $isDateTime
            ? $this->hasTimeZone($class, $fieldName)
            : false;

        if ($hasTimeZone) {
            $value->setTimezone(
                $this->requestDateTimeResolver->getTimezone()
            );
        }

        return $value->format(
            $this->getStringFormat(
                $class,
                $fieldName
            )
        );
    }

    public function denormalize($class, $fieldName, $value = null)
    {
        if (!$value) {
            return $value;
        }

        $targetClass = $this->getPropertyMappedClass($class, $fieldName);
        if ($targetClass !== 'DateTime') {
            return $value;
        }
        $hasTimeZone = $this->hasTimeZone($class, $fieldName);
        $utcTimeZone = new \DateTimeZone('UTC');

        if ($hasTimeZone) {
            $value = new \DateTime(
                $value,
                $this->requestDateTimeResolver->getTimezone()
            );

            $value->setTimezone($utcTimeZone);
        } else {
            $value = new \DateTime(
                $value,
                $utcTimeZone
            );
        }

        return $value;
    }

    private function getPropertyMappedClass($class, $fieldName)
    {
        $propertyMetadata = $this->propertyMetadataFactory->create($class, $fieldName);
        $fieldType = $propertyMetadata->getType();
        if (is_null($fieldType)) {
            return;
        }

        return $fieldType->getClassName();
    }

    protected function getFieldType($class, $field)
    {
        $metadata = $this->classMetadataFactory->getMetadataFor($class);
        $type = $metadata->getTypeOfField($field);

        return $type;
    }

    protected function getStringFormat($class, $field)
    {
        $type = $this->getFieldType($class, $field);

        if ($type === DBALType::DATE_MUTABLE) {
            return 'Y-m-d';
        }

        if ($type === DBALType::TIME_MUTABLE) {
            return 'H:i:s';
        }

        return 'Y-m-d H:i:s';
    }

    protected function hasTimeZone($class, $field)
    {
        $type = $this->getFieldType($class, $field);

        return in_array(
            $type,
            [
                DBALType::DATETIME_MUTABLE,
                DBALType::DATETIMETZ_MUTABLE
            ]
        );
    }
}

