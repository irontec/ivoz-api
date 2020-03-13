<?php

namespace Ivoz\Api\Json\Serializer\Mixer;

use Ivoz\Api\Core\Serializer\Mixer\MixerInterface;
use Ivoz\Core\Infrastructure\Persistence\Filesystem\TempFileHelper;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;

class JsonMixer implements MixerInterface
{
    const FORMAT = 'json';

    protected $requestStack;
    protected $tempFileHelper;

    public function __construct(
        RequestStack $requestStack,
        TempFileHelper $tempFileHelper
    ) {
        $this->requestStack = $requestStack;
        $this->tempFileHelper = $tempFileHelper;
    }

    /**
     * @inheritdoc
     */
    public function supportsFormat($format = null)
    {
        return static::FORMAT === $format;
    }

    /**
     * @inheritdoc
     */
    public function mix(array $segments)
    {
        $tmpFile = $this
            ->tempFileHelper
            ->createWithContent(
                '[',
                false
            );

        for ($i = 0; $i < count($segments); $i++) {

            $content = $i === 0
                ? ''
                : ',';

            $content .= substr(
                stream_get_contents($segments[$i]),
                1,
                -1
            );

            $this
                ->tempFileHelper
                ->appendContent(
                    $tmpFile,
                    $content
                );
        }

        $this
            ->tempFileHelper
            ->appendContent(
                $tmpFile,
                ']'
            );

        $responseCallback = function () use ($tmpFile) {

            fseek($tmpFile, 0);
            while (!feof($tmpFile)) {
                $chunk = fread($tmpFile, 1024);
                if ($chunk !== false) {
                    echo $chunk;
                }
            }
            flush();
        };

        $request = $this
            ->requestStack
            ->getCurrentRequest();

        $contentType = sprintf(
            '%s; charset=utf-8',
            $request->getMimeType($request->getRequestFormat())
        );

        return new StreamedResponse(
            $responseCallback,
            self::METHOD_TO_CODE[$request->getMethod()] ?? Response::HTTP_OK,
            array_merge(
                self::BASE_RESPONSE_HEADERS,
                ['Content-Type' => $contentType]
            )
        );
    }
}
