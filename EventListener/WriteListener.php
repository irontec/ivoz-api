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
    use ValidateAccessControlTrait;

    public function __construct(
        private EntityPersisterInterface $entityPersister,
        DataAccessControlParser $dataAccessControlParser,
        DtoAssembler $dtoAssembler
    ) {
        $this->dataAccessControlParser = $dataAccessControlParser;
        $this->dtoAssembler = $dtoAssembler;
    }

    /**
     * Inserts or updates data returned by the controller if applicable.
     */
    public function onKernelView(ViewEvent $event)
    {
        $request = $event->getRequest();
        if ($request->isMethodSafe()) {
            return;
        }

        $writeOperation = in_array(
            $request->getMethod(),
            [
                Request::METHOD_PUT,
                Request::METHOD_POST,
            ],
            true
        );

        if (!$writeOperation) {
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

        $this->validateAccessControlOrThrowException(
            $controllerResult,
            $request->getMethod()
        );

        try {

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
}
