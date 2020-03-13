<?php

namespace Ivoz\Api\Core\Serializer\Mixer;

use Symfony\Component\HttpFoundation\Response;

interface MixerInterface
{
    const METHOD_TO_CODE = [
        'POST' => Response::HTTP_CREATED,
        'DELETE' => Response::HTTP_NO_CONTENT,
    ];

    const BASE_RESPONSE_HEADERS = [
        'Vary' => 'Accept',
        'X-Content-Type-Options' => 'nosniff',
        'X-Frame-Options' => 'deny',
    ];

    /**
     * {@inheritdoc}
     */
    public function supportsFormat($format = null);

    /**
     * @param array $segments of resources
     *
     * @return string | Response
     */
    public function mix(array $segments);
}
