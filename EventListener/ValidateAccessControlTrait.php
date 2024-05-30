<?php

namespace Ivoz\Api\EventListener;

use Ivoz\Api\Core\Security\DataAccessControlHelper;
use Ivoz\Api\Core\Security\DataAccessControlParser;
use Ivoz\Core\Domain\DataTransferObjectInterface;
use Ivoz\Core\Domain\Service\Assembler\DtoAssembler;
use Ivoz\Core\Domain\Model\EntityInterface;
use Symfony\Component\DependencyInjection\ExpressionLanguage;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

trait ValidateAccessControlTrait
{
    /**
     * @var DataAccessControlParser
     */
    private $dataAccessControlParser;

    /**
     * @var DtoAssembler
     */
    private $dtoAssembler;

    /**
     * @throws AccessDeniedException
     */
    protected function validateAccessControlOrThrowException(EntityInterface $entity, string $method)
    {
        $dataAccessControlMode = $method === Request::METHOD_DELETE
            ? DataAccessControlParser::DELETE_ACCESS_CONTROL_ATTRIBUTE
            : DataAccessControlParser::WRITE_ACCESS_CONTROL_ATTRIBUTE;

        $dataAccessControl = $this->dataAccessControlParser->get(
            $dataAccessControlMode
        );
        $accessControlExpression = DataAccessControlHelper::toString($dataAccessControl);
        if (!$accessControlExpression) {
            return;
        }

        $data = $this
            ->dtoAssembler
            ->toDto($entity)
            ->toArray();

        $accessControlData = $this->flattenAccessControlData($data);
        $accessControlData['this'] = $entity;
        $expressionLanguage = new ExpressionLanguage();

        $isValid = $expressionLanguage->evaluate(
            $accessControlExpression,
            $accessControlData
        );

        if (!$isValid) {
            throw new AccessDeniedException('Rejected request during security check');
        }
    }

    protected function flattenAccessControlData(array $data)
    {
        foreach ($data as $key => $value) {
            if ($value instanceof DataTransferObjectInterface) {
                $data[$key] = $value->getId();
            }
        }

        return $data;
    }
}
