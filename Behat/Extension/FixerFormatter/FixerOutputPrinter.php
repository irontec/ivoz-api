<?php

namespace Ivoz\Api\Behat\Extension\FixerFormatter;

use Behat\Testwork\Output\Printer\OutputPrinter;

class FixerOutputPrinter implements OutputPrinter
{
    private ?bool $isOutputDecorated;

    private static array $ansiStyles = [
        'passed' => "\033[32m",    // Green
        'failed' => "\033[31m",    // Red
        'skipped' => "\033[36m",   // Cyan
        'pending' => "\033[33m",   // Yellow
        'undefined' => "\033[33m", // Yellow
        'comment' => "\033[90m",   // Bright black
        'tag' => "\033[36m",       // Cyan
        'stdout' => "\033[37m",    // White
        'exception' => "\033[31m", // Red
        'reset' => "\033[0m",
    ];

    public function __construct() { }

    public function setOutputStyles(array $styles): void { }

    /** @deprecated */
    public function getOutputStyles()
    {
        return [];
    }

    public function setOutputDecorated($decorated): void
    {
        $this->isOutputDecorated = (bool) $decorated;
    }

    /** @deprecated */
    public function isOutputDecorated()
    {
        return $this->isOutputDecorated;
    }

    public function setOutputVerbosity($level): void { }

    /** @deprecated */
    public function getOutputVerbosity()
    {
        return 0;
    }

    /**
     * @param string|array<string> $messages
     */
    public function write($messages): void
    {
        if (!is_array($messages)) {
            $messages = [$messages];
        }
        $this->doWrite($messages, false);
    }

    /**
     * @param string|array<string> $messages
     */
    public function writeln($messages = ''): void
    {
        if (!is_array($messages)) {
            $messages = [$messages];
        }
        $this->doWrite($messages, true);
    }

    public function flush(): void
    {
    }

    public function setOutputPath($path): void
    {
    }

    public function getOutputPath(): string
    {
        return '';
    }    

    private function colorize(string $message): string
    {
        $message = preg_replace_callback('/\{\+([a-z_\-]+)\}/i', function ($matches) {
            $style = $matches[1];
            return self::$ansiStyles[$style] ?? '';
        }, $message);
        $message = preg_replace('/\{\-[a-z_\-]+\}/i', self::$ansiStyles['reset'], $message);
        return $message;
    }

    /**
     * @param array<string> $messages
     */
    private function doWrite(array $messages, bool $newline): void
    {
        foreach ($messages as $message) {
            $message = $this->colorize($message);
            if ($newline) {
                fwrite(STDOUT, $message . "\n");
            } else {
                fwrite(STDOUT, $message);
            }
        }
    }
}