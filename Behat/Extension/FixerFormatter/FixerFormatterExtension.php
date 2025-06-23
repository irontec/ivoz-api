<?php
declare(strict_types=1);

namespace Ivoz\Api\Behat\Extension\FixerFormatter;

use Behat\Testwork\Output\ServiceContainer\OutputExtension;
use Behat\Testwork\ServiceContainer\Extension;
use Behat\Testwork\ServiceContainer\ExtensionManager;
use Symfony\Component\Config\Definition\Builder\ArrayNodeDefinition;
use Symfony\Component\DependencyInjection\ContainerBuilder;

class FixerFormatterExtension implements Extension
{
    public function getConfigKey()
    {
        return 'fixer';
    }

    public function load(ContainerBuilder $container, array $config): void
    {
        $outputPrinterDefinition = $container->register(FixerOutputPrinter::class);


        $formatterDefinition = $container->register(FixerFormatter::class);

        $formatterDefinition->addArgument($outputPrinterDefinition);

        $formatterDefinition->addTag(OutputExtension::FORMATTER_TAG, ['priority' => 100]);
    }

    public function configure(ArrayNodeDefinition $builder): void { }

    public function initialize(ExtensionManager $extensionManager): void { }

    public function process(ContainerBuilder $container): void { }
}