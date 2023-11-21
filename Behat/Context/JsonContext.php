<?php

namespace Ivoz\Api\Behat\Context;

use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Mink\Exception\ExpectationException;
use Behatch\Context\BaseContext;
use Behatch\HttpCall\HttpCallResultPool;
use Behatch\HttpCall\Request;
use Behatch\Json\Json;
use Behatch\Json\JsonInspector;
use http\Exception\RuntimeException;

/**
 * Defines application features from the specific context.
 */
class JsonContext extends BaseContext implements Context, SnippetAcceptingContext
{
    use StreamedResponseTrait;

    protected $request;
    protected $httpCallResultPool;
    protected $inspector;

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct(
        Request $request,
        HttpCallResultPool $httpCallResultPool
    ) {
        $this->request = $request;
        $this->httpCallResultPool = $httpCallResultPool;
        $this->inspector = new JsonInspector(
            'javascript'
        );
    }

    /**
     * Checks, that the response is correct JSON
     *
     * @Then the streamed response should be in JSON
     */
    public function theStreamedResponseShouldBeInJson()
    {
        $this->getJson();
    }

    /**
     * Checks, that given JSON node has N element(s)
     *
     * @Then the streamed JSON node :node should have :count element(s)
     */
    public function theStreamedJsonNodeShouldHaveElements($node, $count)
    {
        $json = $this->getJson();

        $actual = $this->inspector->evaluate($json, $node);

        $this->assertSame($count, sizeof((array) $actual));
    }

    /**
     * Checks, that given JSON node is equal to given value
     *
     * @Then the streamed JSON node :node should be equal to :text
     */
    public function theStreamedJsonNodeShouldBeEqualTo($node, $text)
    {
        $json = $this->getJson();

        $actual = $this->inspector->evaluate($json, $node);

        if ($actual != $text) {
            throw new \Exception(
                sprintf("The node value is '%s'", json_encode($actual))
            );
        }
    }

    /**
     * Checks, whether the response content is equal to given json
     *
     * @Then the streamed JSON should be equal to:
     */
    public function theStreamedJsonResponseShouldBeEqualTo(PyStringNode $expected)
    {
        $expected = new Json($expected);
        $actual = new Json(
            $this->getStreamedResponseContent()
        );
        $message = "the response was \n\"\"\"\n" . $actual->encode() ."\"\"\"";

        $this->assert(
            $expected == $actual,
            $message
        );
    }

    /**
     * @Then the JSON should be like:
     */
    public function theJsonShouldBeLike(PyStringNode $content)
    {
        $actual = new Json($this->httpCallResultPool->getResult()->getValue());

        try {
            $expected = new Json($content);
        } catch (\Exception $e) {
            throw new \Exception('The expected JSON is not a valid', $e->getCode(), $e);
        }

        try {
            $this->assertAlike(
                $expected->getContent(),
                $actual->getContent()
            );
        } catch (\Exception $e) {
            $this->assert(
                false,
                "The json is equal to:\n". $actual->encode() . "\nbut\n" . $e->getMessage()
            );
        }
    }

    private function getJson()
    {
        return new Json(
            $this->getStreamedResponseContent()
        );
    }

    /**
     * @param mixed $expected
     * @param mixed $actual
     *
     * @return void
     */
    private function assertAlike($expected, $actual)
    {
        if ($expected instanceof \stdClass) {
            $expected = get_object_vars($expected);
            $actual = get_object_vars($actual);
        }

        if (is_array($expected)) {
            $keyDivergence = array_diff(
                array_keys($expected),
                array_keys($actual)
            );

            if (!empty($keyDivergence)) {
                $this->assert(
                    false,
                    "Object attributes are not equal: " . implode(', ', $keyDivergence)
                );
            }

            foreach ($expected as $key => $value) {
                if (!array_key_exists($key, $actual)) {
                    $this->assert(
                        false,
                        "Unable to find key $key in " . json_encode($actual)
                    );
                }

                if($value === "~"){
                    continue;
                }

                $this->assertAlike($expected[$key], $actual[$key]);
            }

            return;
        }

        $matchingRules = preg_match(
            '/match:(\w+)\((.+)\)/', //'/match:(\w)\((\w)\)/',
            $expected,
            $matches
        );

        if ($matchingRules) {
            [, $matcher, $value] = $matches;
            $this->applyMatcher($matcher, $value, $actual);

            return;

        } elseif ($expected !== '~') {
            $this->assert(
                $expected === $actual,
                "The element '$actual' is not equal to '$expected'"
            );

            return;
        }

        if (!($actual instanceof \stdClass)) {
            $this->assert(
                false,
                "Expected $actual to be an array"
            );
        }
    }

    private function applyMatcher(string $matcher, $expected, $actual)
    {
        switch($matcher) {
            case 'type':

                $actualType = gettype($actual);
                $castedExpectedVariable = $expected;

                if ($actualType !== gettype($castedExpectedVariable)) {
                    $succeeded = settype(
                        $castedExpectedVariable,
                        $actualType
                    );

                    if (!$succeeded) {
                        throw new ExpectationException(
                            'Unable to cast ' . $expected . ' to ' . $actualType,
                            $this->getSession()->getDriver()
                        );
                    }
                }

                $this->assert(
                    gettype($castedExpectedVariable) === gettype($actual),
                    "Type of element '$actual' is not equal to '$expected'"
                );
                break;
            case 'regexp':
                $this->assert(
                    preg_match($expected, (string) $actual),
                    "The element '$actual' does not match regexp '$expected'"
                );
                break;
            default:
                throw new RuntimeException('Unknown matcher type ' . $matcher);
        }
    }
}
