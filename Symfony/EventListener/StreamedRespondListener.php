<?php

namespace Ivoz\Api\Symfony\EventListener;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\ViewEvent;

class StreamedRespondListener
{
    public function onKernelView(ViewEvent $event)
    {
        $controllerResult = $event->getControllerResult();

        if ($controllerResult instanceof Response) {
            $event->setResponse(
                $controllerResult
            );
        }
    }
}
