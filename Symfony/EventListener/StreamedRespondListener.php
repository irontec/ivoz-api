<?php

namespace Ivoz\Api\Symfony\EventListener;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\GetResponseForControllerResultEvent;

class StreamedRespondListener
{
    public function onKernelView(GetResponseForControllerResultEvent $event)
    {
        $controllerResult = $event->getControllerResult();

        if ($controllerResult instanceof Response) {
            $event->setResponse(
                $controllerResult
            );
        }
    }
}
