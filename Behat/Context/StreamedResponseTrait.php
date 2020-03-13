<?php

namespace Ivoz\Api\Behat\Context;

use Behatch\HttpCall\Request;
use Symfony\Component\HttpFoundation\StreamedResponse;

/**
 * Defines application features from the specific context.
 */
trait StreamedResponseTrait
{
    /**
     * @var Request
     */
    protected $request;


    protected function getStreamedResponseContent()
    {
        $requestReflection = new \ReflectionClass($this->request);
        $minkPropertyAccessor = $requestReflection->getProperty('mink');
        $minkPropertyAccessor->setAccessible(true);

        $mink = $minkPropertyAccessor->getValue($this->request);
        $response = $mink->getSession()->getDriver()->getClient()->getResponse();

        if (!$response instanceof StreamedResponse) {
            throw new \Exception('StreamedResponse was expected');
        }

        $responseReflection = new \ReflectionClass($response);
        $streamedPropertyAccessor = $responseReflection->getProperty('streamed');
        $streamedPropertyAccessor->setAccessible(true);
        $streamedPropertyAccessor->setValue($response, false);

        ob_start();
        $response->sendContent();

        return trim(
            ob_get_clean()
        );
    }
}
