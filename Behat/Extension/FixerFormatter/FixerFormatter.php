<?php

namespace Ivoz\Api\Behat\Extension\FixerFormatter;

use Behat\Behat\EventDispatcher\Event\AfterFeatureTested;
use Behat\Behat\EventDispatcher\Event\AfterStepTested;
use Behat\Behat\EventDispatcher\Event\BeforeFeatureTested;
use Behat\Behat\Tester\Result\SkippedStepResult;
use Behat\Testwork\EventDispatcher\Event\AfterExerciseCompleted;
use Behat\Testwork\Output\Formatter;
use Ivoz\Api\Behat\Context\JsonContext;

class FixerFormatter implements Formatter
{
    public function __construct(
        private FixerOutputPrinter $outputPrinter,
    ) {}

    /** @var StepFix[] */
    private array $failedSteps = [];
    private array $parameters = [];

    private int $fixedFiles = 0;
    private int $fixedSteps = 0;

    public static function getSubscribedEvents()
    {
        return [
            AfterStepTested::AFTER => ['afterStep', 0],
            AfterExerciseCompleted::AFTER => ['afterExercise', 0],
            AfterFeatureTested::AFTER => ['afterFeatureTested', 0],
            BeforeFeatureTested::BEFORE => ['beforeFeatureTested', 0],
        ];
    }

    public function beforeFeatureTested(BeforeFeatureTested $event)
    {
        $this->failedSteps = [];
    }

    public function afterStep(AfterStepTested $event)
    {
        $testResult = $event->getTestResult();

        if ($testResult->isPassed()) {
            return;
        }

        if (is_object($testResult) && get_class($testResult) === SkippedStepResult::class) {
            return;
        }

        /** @var JsonContext $jsonContext */
        $jsonContext = $event->getEnvironment()->getContext(
            JsonContext::class,
        );

        $step = $event->getStep();

        if (empty($step->getArguments())) {
            return;
        }

        $fixedExpectation = $jsonContext->getFixedResult();

        if (is_null($fixedExpectation)) {
            return;
        }

        $feature = $event->getFeature();
        $featureFile = $feature->getFile();

        if (count($step->getArguments()) !== 1) {
            return;
        }

        $expectation = $step->getArguments()[0];

        $this->failedSteps[] = new StepFix(
            $expectation,
            $fixedExpectation,
        );
    }

    public function afterExercise(AfterExerciseCompleted $event)
    {       
        if ($this->fixedFiles > 0) {
            $this->outputPrinter->writeln(sprintf(
                "{+passed}✔ Fixed %d step(s) in %d feature file(s){-passed}",
                $this->fixedSteps,
                $this->fixedFiles,
            ));
        } else {
            $this->outputPrinter->writeln("{+comment}No features were fixed.{-comment}");
        }        
    }


    public function afterFeatureTested(AfterFeatureTested $event)
    {
        
        $featureFile = $event->getFeature()->getFile();
        
        $stepsFixed = count($this->failedSteps);
        $files[] = $featureFile;
        $featureFixer = new FeatureFixer();
        $fixedFeature = $featureFixer->execute($featureFile, $this->failedSteps);
        file_put_contents($featureFile, $fixedFeature);

        if ($stepsFixed > 0) {  
            $this->fixedSteps += $stepsFixed;        
            $this->fixedFiles++;
        }

        if ($stepsFixed > 0) {
            $this->outputPrinter->writeln(sprintf(
                "  {+passed}✔ Fixed %d step(s) in:{-passed}",
                $stepsFixed
            ));
            foreach ($files as $file) {
                $this->outputPrinter->writeln("    {+tag}• $file{-tag}");
            }
        }
    }

    public function getName()
    {
        return 'fixer';
    }

    public function getOutputPrinter()
    {
        return $this->outputPrinter;
    }

    public function getParameter($name)
    {
        return $this->parameters[$name] ?? null;
    }

    public function setParameter($name, $value)
    {
        $this->parameters[$name] = $value;
    }

    public function getDescription(): string
    {
        return 'Fix failing schenarios';
    }
}
