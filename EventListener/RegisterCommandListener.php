<?php

namespace Ivoz\Api\EventListener;

use Ivoz\Core\Domain\DataTransferObjectInterface;
use Ivoz\Core\Domain\Event\CommandWasExecuted;
use Ivoz\Core\Domain\RequestId;
use Ivoz\Core\Domain\Model\EntityInterface;
use Ivoz\Core\Domain\Service\DomainEventPublisher;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Event\ViewEvent;
use Symfony\Component\HttpKernel\Exception\NotAcceptableHttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

final class RegisterCommandListener
{
    protected $eventPublisher;
    protected $tokenStorage;

    /**
     * @var string
     */
    protected $requestId;

    public function __construct(
        DomainEventPublisher $eventPublisher,
        RequestId $requestId,
        TokenStorageInterface $tokenStorage
    ) {
        $this->eventPublisher = $eventPublisher;
        $this->tokenStorage = $tokenStorage;
        $this->requestId = $requestId->toString();
    }

    /**
     * Sets the applicable format to the HttpFoundation Request.
     *
     * @throws NotFoundHttpException
     * @throws NotAcceptableHttpException
     */
    public function onKernelView(ViewEvent $event)
    {
        /** @var Request $request */
        $request = $event->getRequest();

        $body = json_decode($request->getContent(), true);
        if (is_scalar($body)) {
            $body = [$body];
        }
        $attributes = $request->attributes->all();

        if (!array_key_exists('_route_params', $attributes)) {
            return;
        }

        $params = $attributes['_route_params'];
        $params['_format'] = $request->headers->get('Content-Type');
        $params['_route'] = $attributes['_route'];
        ksort($params);

        $token =  $this->tokenStorage->getToken();
        $user = $token && $token->getUser()
            ? $token->getUser()
            : null;

        if (!$user instanceof EntityInterface) {
            $user = null;
        }

        $this->triggerEvent(
            $params,
            $body,
            $user
        );
    }

    private function triggerEvent(
        array $params,
        array $body = null,
        EntityInterface $user = null
    ) {

        $resourceClass = $params['_api_resource_class'] ?? '';

        if (array_key_exists('_api_collection_operation_name', $params)) {
            $action = $params['_api_collection_operation_name'];
            unset($params['_api_collection_operation_name']);
        } elseif (array_key_exists('_api_item_operation_name', $params)) {
            $action = $params['_api_item_operation_name'];
            unset($params['_api_item_operation_name']);
        } else {
            return;
        }

        $ip = $_SERVER['X-Forwarded-For'] ?? $_SERVER['REMOTE_ADDR'] ?? '';

        $agent = [
            'ip' => $ip,
            'user' => (string) $user,
        ];

        $payload = $this->cleanUpPayload(
            $resourceClass,
            $body ?? []
        );

        $arguments = array_values($params);
        $arguments[] = $payload;

        $event = new CommandWasExecuted(
            $this->requestId,
            'API',
            $action,
            $arguments,
            $agent
        );

        $this->eventPublisher->publish(
            $event
        );
    }

    private function cleanUpPayload(string $resourceClass, array $payload)
    {
        $dtoClass = $resourceClass . 'Dto';
        if (!class_exists($dtoClass)) {
            return $payload;
        }

        /** @var DataTransferObjectInterface $dto */
        $dto = new $dtoClass();
        $dto->denormalize($payload, DataTransferObjectInterface::CONTEXT_DETAILED);
        $maskedPayload = $dto->toArray(true);
        $response = [];

        foreach ($payload as $key => $value) {
            $replaceValue =
                array_key_exists($key, $maskedPayload)
                && is_scalar($maskedPayload[$key]);

            $response[$key] = $replaceValue
                ? $maskedPayload[$key]
                : $value;
        }

        return $response;
    }
}
