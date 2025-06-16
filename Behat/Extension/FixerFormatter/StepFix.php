<?php

namespace Ivoz\Api\Behat\Extension\FixerFormatter;

use Behat\Gherkin\Node\PyStringNode;
use Behatch\Json\Json;

class StepFix
{
    private int $line = 0;
    private int $currentLineCount = 0;

    /** @var string[]  */
    private array $replacement;

    public function __construct(
        PyStringNode $expectation, string $fixedExpectation
    ) {
        $jsonData = json_decode($fixedExpectation);

        $replacement = $jsonData
            ? (new Json($fixedExpectation))->encode()
            : $fixedExpectation;

        $this->replacement = explode(
            "\n",
            $replacement,
        );

        $this->currentLineCount = count(
            $expectation->getStrings(),
        );

        $this->line = $expectation->getLine();
    }

    /**
     * @return string[]
     */
    public function getReplacement(): array
    {
        return $this->replacement;
    }

    public function getLine(): int
    {
        return $this->line;
    }

    public function getCurrentLineCount(): int
    {
        return $this->currentLineCount;
    }

    public function getAddedLines(): int
    {
        return count($this->getReplacement()) - $this->getCurrentLineCount();
    }
}