<?php

namespace Ivoz\Api\Behat\Extension\FixerFormatter;


class FeatureFixer
{
    private int $addedLines = 0;
    private array $featureLines = [];

    /**
     * @param StepFix[] $stepFixes
     */
    public function execute(string $fileName, array $stepFixes): string
    {
        $content = file_get_contents($fileName);
        if ($content === false) {
            throw new \Exception('Cannot read file ' . $fileName);
        }

        $this->featureLines = explode(
            "\n",
            $content,
        );

        foreach ($stepFixes as $stepFix) {
            $this->fixStep($stepFix);
        }

        return implode(
            "\n",
            $this->featureLines
        );
    }

    private function fixStep(StepFix $stepFix)
    {
        $offset = $this->addedLines + $stepFix->getLine();

        $replacement = $this->indentReplacement(
            $stepFix->getReplacement(),
        );

        array_splice(
            $this->featureLines,
            $offset,
            $stepFix->getCurrentLineCount(),
            $replacement,
        );

        $linesIncrement = $stepFix->getCurrentLineCount() - count($stepFix->getReplacement());

        $this->addedLines += $stepFix->getAddedLines();
    }


    /**
     * @param string[] $replacement
     * @return string[]
     */
    private function indentReplacement(array $replacement): array
    {
        $indent = str_pad(
            '',
            6,
            ' ',
            STR_PAD_LEFT
        );

        return array_map(
            fn($line) => $indent . $line,
            $replacement,
        );
    }
}
