<?php

namespace Ivoz\Api\Csv\Serializer\Mixer;

use Ivoz\Api\Core\Serializer\Mixer\MixerInterface;
use Ivoz\Core\Infrastructure\Persistence\Filesystem\TempFileHelper;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;

class CsvMixer implements MixerInterface
{
    const FORMAT = 'csv';

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
        $tmpFile = tmpfile();

        for ($i = 0; $i < count($segments); $i++) {

            $content = stream_get_contents($segments[$i]);

            // Remove column names from every segment but the first one
            $content = $i > 0
                ? $this->removeFirstLine($content)
                : $content;

            $this
                ->tempFileHelper
                ->appendContent(
                    $tmpFile,
                    $content
                );
        }

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

    private function removeFirstLine($content)
    {
        return substr($content, strpos($content, "\n")+1);
    }
}
