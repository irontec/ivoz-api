<?php

namespace Ivoz\Api\EventListener;

use Doctrine\Persistence\ManagerRegistry;
use Ivoz\Api\Core\Security\DataAccessControlParser;
use Ivoz\Core\Application\Service\Assembler\DtoAssembler;
use Ivoz\Core\Domain\Model\EntityInterface;
use Ivoz\Core\Domain\Service\EntityPersisterInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\ViewEvent;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

final class RemoveListener
{
    use ValidateAccessControlTrait;

    private const MULTIDELETE_QUERY_ARG = '_rmAlso';

    public function __construct(
        private EntityPersisterInterface $entityPersister,
        private ManagerRegistry $managerRegistry,
        DataAccessControlParser $dataAccessControlParser,
        DtoAssembler $dtoAssembler
    ) {
        $this->dataAccessControlParser = $dataAccessControlParser;
        $this->dtoAssembler = $dtoAssembler;
    }

    /**
     * Delete data returned by the controller if applicable.
     */
    public function onKernelView(ViewEvent $event)
    {
        $request = $event->getRequest();
        if ($request->isMethodSafe()) {
            return;
        }

        $deleteOperation = $request->getMethod() === Request::METHOD_DELETE;
        if (!$deleteOperation) {
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

        try {
            /** @var mixed|array $rmAlso */
            $rmAlso = $request->query->get(
                self::MULTIDELETE_QUERY_ARG
            );

            if (!is_array($rmAlso)) {
                throw new \RuntimeException(
                    self::MULTIDELETE_QUERY_ARG. ' query parameter was expected to be array value'
                );
            }

            $this->handleDelete($controllerResult, $rmAlso);
            $event
                ->setControllerResult(null);

            return;

        } catch (\DomainException $e) {

            throw new AccessDeniedException(
                $e->getMessage(),
                $e
            );
        }
    }

    private function handleDelete(
        EntityInterface $entity,
        array $rmAlso
    ): void {

        $this->validateAccessControlOrThrowException(
            $entity,
            Request::METHOD_DELETE,
        );

        $isMultiDelete = !empty($rmAlso);
        if ($isMultiDelete) {

            $this->handleMultidelete(
                $entity,
                $rmAlso
            );

            return;
        }

        $this
            ->entityPersister
            ->remove($entity);
    }

    /**
     * @param array<array-key, string|int> $rmAlso
     */
    private function handleMultidelete(EntityInterface $entity, array $rmAlso): void
    {
        $className = get_class($entity);
        $manager = $this->managerRegistry->getManagerForClass(
            $className
        );
        if (!$manager) {
            throw new \RuntimeException('Unable to get an entity manager for class ' . $className);
        }

        $repository = $manager->getRepository($className);
        $entities = [$entity];

        foreach ($rmAlso as $id) {
            $newEntity = $repository->find($id);
            if (!$newEntity) {
                continue;
            }

            $this->validateAccessControlOrThrowException(
                $newEntity,
                Request::METHOD_DELETE,
            );

            $entities[] = $newEntity;
        }

        $this
            ->entityPersister
            ->removeFromArray($entities);
    }
}
