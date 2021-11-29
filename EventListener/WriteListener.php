<?php

namespace Ivoz\Api\EventListener;

use Ivoz\Api\Core\Security\DataAccessControlHelper;
use Ivoz\Api\Core\Security\DataAccessControlParser;
use Ivoz\Core\Application\DataTransferObjectInterface;
use Ivoz\Core\Application\Service\Assembler\DtoAssembler;
use Ivoz\Core\Domain\Model\EntityInterface;
use Ivoz\Core\Domain\Service\EntityPersisterInterface;
use Symfony\Component\DependencyInjection\ExpressionLanguage;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\ViewEvent;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

final class WriteListener
{
    /**
     * @var EntityPersisterInterface
     */
    private $entityPersister;

    /**
     * @var DataAccessControlParser
     */
    private $dataAccessControlParser;

    /**
     * @var DtoAssembler
     */
    private $dtoAssembler;

    public function __construct(
        EntityPersisterInterface $entityPersister,
        DataAccessControlParser $dataAccessControlParser,
        DtoAssembler $dtoAssembler
    ) {
        $this->entityPersister = $entityPersister;
        $this->dataAccessControlParser = $dataAccessControlParser;
        $this->dtoAssembler = $dtoAssembler;
    }

    /**
     * Persists, updates or delete data return by the controller if applicable.
     */
    public function onKernelView(ViewEvent $event)
    {
        $request = $event->getRequest();
        if ($request->isMethodSafe()) {
            return;
        }

        $resourceClass = $request->attributes->get('_api_resource_class');
        if (null === $resourceClass) {
            return;
        }

        $controllerResult = $event->getControllerResult();
        $isEntity = $controllerResult instanceof EntityInterface;
        if (!$isEntity) {
            return;
        }

        $writeOperation = in_array(
            $request->getMethod(),
            [
                Request::METHOD_PUT,
                Request::METHOD_POST,
                Request::METHOD_DELETE
            ],
            true
        );

        if (!$writeOperation) {
            return;
        }

        $this->validateAccessControlOrThrowException(
            $controllerResult
        );

        try {
            $isDelete = $request->getMethod() === Request::METHOD_DELETE;
            if ($isDelete) {
                $this
                    ->entityPersister
                    ->remove($controllerResult);

                $event
                    ->setControllerResult(null);

                return;
            }

            $this->entityPersister->persist(
                $controllerResult,
                true
            );

        } catch (\DomainException $e) {

            throw new AccessDeniedException(
                $e->getMessage(),
                $e
            );
        }
    }

    /**
     * @param EntityInterface $entity
     * @throws AccessDeniedException
     */
    protected function validateAccessControlOrThrowException(EntityInterface $entity)
    {
        $dataAccessControl = $this->dataAccessControlParser->get(
            DataAccessControlParser::WRITE_ACCESS_CONTROL_ATTRIBUTE
        );
        $accessControlExpression = DataAccessControlHelper::toString($dataAccessControl);
        if (!$accessControlExpression) {
            return;
        }

        $data = $this->dtoAssembler
            ->toDto($entity)
            ->toArray();

        $accessControlData = $this->flattenAccessControlData($data);
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
