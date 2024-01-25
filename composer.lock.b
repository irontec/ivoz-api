{
    "_readme": [
        "This file locks the dependencies of your project to a known state",
        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",
        "This file is @generated automatically"
    ],
    "content-hash": "9c62f2e67a857ee2238d7732e7b5a46f",
    "packages": [
        {
            "name": "api-platform/core",
            "version": "v2.6.8",
            "source": {
                "type": "git",
                "url": "https://github.com/api-platform/core.git",
                "reference": "ff3aab5b196709c721960c0bb4f1d52759af737d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/api-platform/core/zipball/ff3aab5b196709c721960c0bb4f1d52759af737d",
                "reference": "ff3aab5b196709c721960c0bb4f1d52759af737d",
                "shasum": ""
            },
            "require": {
                "doctrine/inflector": "^1.0 || ^2.0",
                "fig/link-util": "^1.0",
                "php": ">=7.1",
                "psr/cache": "^1.0 || ^2.0 || ^3.0",
                "psr/container": "^1.0 || ^2.0",
                "symfony/http-foundation": "^4.4 || ^5.1 || ^6.0",
                "symfony/http-kernel": "^4.4 || ^5.1 || ^6.0",
                "symfony/property-access": "^3.4.19 || ^4.4 || ^5.1 || ^6.0",
                "symfony/property-info": "^3.4 || ^4.4 || ^5.2.1 || ^6.0",
                "symfony/serializer": "^4.4 || ^5.1 || ^6.0",
                "symfony/web-link": "^4.4 || ^5.1 || ^6.0",
                "willdurand/negotiation": "^2.0.3 || ^3.0"
            },
            "conflict": {
                "doctrine/common": "<2.7",
                "doctrine/dbal": "<2.10",
                "doctrine/mongodb-odm": "<2.2",
                "doctrine/persistence": "<1.3"
            },
            "require-dev": {
                "behat/behat": "^3.1",
                "behat/mink": "^1.9@dev",
                "doctrine/annotations": "^1.7",
                "doctrine/cache": "^1.11 || ^2.1",
                "doctrine/common": "^2.11 || ^3.0",
                "doctrine/data-fixtures": "^1.2.2",
                "doctrine/dbal": "^2.6 || ^3.0",
                "doctrine/doctrine-bundle": "^1.12 || ^2.0",
                "doctrine/mongodb-odm": "^2.2",
                "doctrine/mongodb-odm-bundle": "^4.0",
                "doctrine/orm": "^2.6.4",
                "elasticsearch/elasticsearch": "^6.0 || ^7.0",
                "friends-of-behat/mink-browserkit-driver": "^1.3.1",
                "friends-of-behat/mink-extension": "^2.2",
                "friends-of-behat/symfony-extension": "^2.1",
                "guzzlehttp/guzzle": "^6.0 || ^7.0",
                "jangregor/phpstan-prophecy": "^1.0",
                "justinrainbow/json-schema": "^5.2.1",
                "phpdocumentor/reflection-docblock": "^3.0 || ^4.0 || ^5.1",
                "phpdocumentor/type-resolver": "^0.3 || ^0.4 || ^1.4",
                "phpstan/extension-installer": "^1.1",
                "phpstan/phpstan": "^1.1",
                "phpstan/phpstan-doctrine": "^1.0",
                "phpstan/phpstan-phpunit": "^1.0",
                "phpstan/phpstan-symfony": "^1.0",
                "psr/log": "^1.0 || ^2.0 || ^3.0",
                "ramsey/uuid": "^3.7 || ^4.0",
                "ramsey/uuid-doctrine": "^1.4",
                "soyuka/contexts": "dev-main",
                "soyuka/stubs-mongodb": "^1.0",
                "symfony/asset": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/browser-kit": "^4.4 || ^5.1 || ^6.0",
                "symfony/cache": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/config": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/console": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/css-selector": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/debug": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/dependency-injection": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/doctrine-bridge": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/dom-crawler": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/event-dispatcher": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/expression-language": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/finder": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/form": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/framework-bundle": "^4.4 || ^5.1 || ^6.0",
                "symfony/http-client": "^4.4 || ^5.1 || ^6.0",
                "symfony/mercure-bundle": "*",
                "symfony/messenger": "^4.4 || ^5.1 || ^6.0",
                "symfony/phpunit-bridge": "^5.4 || ^6.0",
                "symfony/routing": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/security-bundle": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/security-core": "^4.4 || ^5.1 || ^6.0",
                "symfony/twig-bundle": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/validator": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "symfony/web-profiler-bundle": "^4.4 || ^5.1 || ^6.0",
                "symfony/yaml": "^3.4 || ^4.4 || ^5.1 || ^6.0",
                "twig/twig": "^1.42.3 || ^2.12 || ^3.0",
                "webonyx/graphql-php": "^14.0"
            },
            "suggest": {
                "doctrine/mongodb-odm-bundle": "To support MongoDB. Only versions 4.0 and later are supported.",
                "elasticsearch/elasticsearch": "To support Elasticsearch.",
                "guzzlehttp/guzzle": "To use the HTTP cache invalidation system.",
                "ocramius/package-versions": "To display the API Platform's version in the debug bar.",
                "phpdocumentor/reflection-docblock": "To support extracting metadata from PHPDoc.",
                "psr/cache-implementation": "To use metadata caching.",
                "ramsey/uuid": "To support Ramsey's UUID identifiers.",
                "symfony/cache": "To have metadata caching when using Symfony integration.",
                "symfony/config": "To load XML configuration files.",
                "symfony/expression-language": "To use authorization features.",
                "symfony/security": "To use authorization features.",
                "symfony/twig-bundle": "To use the Swagger UI integration.",
                "symfony/uid": "To support Symfony UUID/ULID identifiers.",
                "symfony/web-profiler-bundle": "To use the data collector.",
                "webonyx/graphql-php": "To support GraphQL."
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "2.6.x-dev"
                },
                "symfony": {
                    "require": "^3.4 || ^4.4 || ^5.1 || ^6.0"
                }
            },
            "autoload": {
                "psr-4": {
                    "ApiPlatform\\Core\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Kévin Dunglas",
                    "email": "kevin@dunglas.fr",
                    "homepage": "https://dunglas.fr"
                }
            ],
            "description": "Build a fully-featured hypermedia or GraphQL API in minutes!",
            "homepage": "https://api-platform.com",
            "keywords": [
                "Hydra",
                "JSON-LD",
                "api",
                "graphql",
                "hal",
                "jsonapi",
                "openapi",
                "rest",
                "swagger"
            ],
            "support": {
                "issues": "https://github.com/api-platform/core/issues",
                "source": "https://github.com/api-platform/core/tree/v2.6.8"
            },
            "funding": [
                {
                    "url": "https://tidelift.com/funding/github/packagist/api-platform/core",
                    "type": "tidelift"
                }
            ],
            "time": "2022-01-11T10:29:54+00:00"
        },
        {
            "name": "beberlei/assert",
            "version": "v3.3.2",
            "source": {
                "type": "git",
                "url": "https://github.com/beberlei/assert.git",
                "reference": "cb70015c04be1baee6f5f5c953703347c0ac1655"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/beberlei/assert/zipball/cb70015c04be1baee6f5f5c953703347c0ac1655",
                "reference": "cb70015c04be1baee6f5f5c953703347c0ac1655",
                "shasum": ""
            },
            "require": {
                "ext-ctype": "*",
                "ext-json": "*",
                "ext-mbstring": "*",
                "ext-simplexml": "*",
                "php": "^7.0 || ^8.0"
            },
            "require-dev": {
                "friendsofphp/php-cs-fixer": "*",
                "phpstan/phpstan": "*",
                "phpunit/phpunit": ">=6.0.0",
                "yoast/phpunit-polyfills": "^0.1.0"
            },
            "suggest": {
                "ext-intl": "Needed to allow Assertion::count(), Assertion::isCountable(), Assertion::minCount(), and Assertion::maxCount() to operate on ResourceBundles"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "lib/Assert/functions.php"
                ],
                "psr-4": {
                    "Assert\\": "lib/Assert"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-2-Clause"
            ],
            "authors": [
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de",
                    "role": "Lead Developer"
                },
                {
                    "name": "Richard Quadling",
                    "email": "rquadling@gmail.com",
                    "role": "Collaborator"
                }
            ],
            "description": "Thin assertion library for input validation in business models.",
            "keywords": [
                "assert",
                "assertion",
                "validation"
            ],
            "support": {
                "issues": "https://github.com/beberlei/assert/issues",
                "source": "https://github.com/beberlei/assert/tree/v3.3.2"
            },
            "time": "2021-12-16T21:41:27+00:00"
        },
        {
            "name": "brick/math",
            "version": "0.11.0",
            "source": {
                "type": "git",
                "url": "https://github.com/brick/math.git",
                "reference": "0ad82ce168c82ba30d1c01ec86116ab52f589478"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/brick/math/zipball/0ad82ce168c82ba30d1c01ec86116ab52f589478",
                "reference": "0ad82ce168c82ba30d1c01ec86116ab52f589478",
                "shasum": ""
            },
            "require": {
                "php": "^8.0"
            },
            "require-dev": {
                "php-coveralls/php-coveralls": "^2.2",
                "phpunit/phpunit": "^9.0",
                "vimeo/psalm": "5.0.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Brick\\Math\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "Arbitrary-precision arithmetic library",
            "keywords": [
                "Arbitrary-precision",
                "BigInteger",
                "BigRational",
                "arithmetic",
                "bigdecimal",
                "bignum",
                "brick",
                "math"
            ],
            "support": {
                "issues": "https://github.com/brick/math/issues",
                "source": "https://github.com/brick/math/tree/0.11.0"
            },
            "funding": [
                {
                    "url": "https://github.com/BenMorel",
                    "type": "github"
                }
            ],
            "time": "2023-01-15T23:15:59+00:00"
        },
        {
            "name": "doctrine/annotations",
            "version": "1.14.3",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/annotations.git",
                "reference": "fb0d71a7393298a7b232cbf4c8b1f73f3ec3d5af"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/annotations/zipball/fb0d71a7393298a7b232cbf4c8b1f73f3ec3d5af",
                "reference": "fb0d71a7393298a7b232cbf4c8b1f73f3ec3d5af",
                "shasum": ""
            },
            "require": {
                "doctrine/lexer": "^1 || ^2",
                "ext-tokenizer": "*",
                "php": "^7.1 || ^8.0",
                "psr/cache": "^1 || ^2 || ^3"
            },
            "require-dev": {
                "doctrine/cache": "^1.11 || ^2.0",
                "doctrine/coding-standard": "^9 || ^10",
                "phpstan/phpstan": "~1.4.10 || ^1.8.0",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "symfony/cache": "^4.4 || ^5.4 || ^6",
                "vimeo/psalm": "^4.10"
            },
            "suggest": {
                "php": "PHP 8.0 or higher comes with attributes, a native replacement for annotations"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Annotations\\": "lib/Doctrine/Common/Annotations"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "Docblock Annotations Parser",
            "homepage": "https://www.doctrine-project.org/projects/annotations.html",
            "keywords": [
                "annotations",
                "docblock",
                "parser"
            ],
            "support": {
                "issues": "https://github.com/doctrine/annotations/issues",
                "source": "https://github.com/doctrine/annotations/tree/1.14.3"
            },
            "time": "2023-02-01T09:20:38+00:00"
        },
        {
            "name": "doctrine/cache",
            "version": "2.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/cache.git",
                "reference": "1ca8f21980e770095a31456042471a57bc4c68fb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb",
                "reference": "1ca8f21980e770095a31456042471a57bc4c68fb",
                "shasum": ""
            },
            "require": {
                "php": "~7.1 || ^8.0"
            },
            "conflict": {
                "doctrine/common": ">2.2,<2.4"
            },
            "require-dev": {
                "cache/integration-tests": "dev-master",
                "doctrine/coding-standard": "^9",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "psr/cache": "^1.0 || ^2.0 || ^3.0",
                "symfony/cache": "^4.4 || ^5.4 || ^6",
                "symfony/var-exporter": "^4.4 || ^5.4 || ^6"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Cache\\": "lib/Doctrine/Common/Cache"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "PHP Doctrine Cache library is a popular cache implementation that supports many different drivers such as redis, memcache, apc, mongodb and others.",
            "homepage": "https://www.doctrine-project.org/projects/cache.html",
            "keywords": [
                "abstraction",
                "apcu",
                "cache",
                "caching",
                "couchdb",
                "memcached",
                "php",
                "redis",
                "xcache"
            ],
            "support": {
                "issues": "https://github.com/doctrine/cache/issues",
                "source": "https://github.com/doctrine/cache/tree/2.2.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fcache",
                    "type": "tidelift"
                }
            ],
            "time": "2022-05-20T20:07:39+00:00"
        },
        {
            "name": "doctrine/collections",
            "version": "1.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/collections.git",
                "reference": "2b44dd4cbca8b5744327de78bafef5945c7e7b5e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/collections/zipball/2b44dd4cbca8b5744327de78bafef5945c7e7b5e",
                "reference": "2b44dd4cbca8b5744327de78bafef5945c7e7b5e",
                "shasum": ""
            },
            "require": {
                "doctrine/deprecations": "^0.5.3 || ^1",
                "php": "^7.1.3 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9.0 || ^10.0",
                "phpstan/phpstan": "^1.4.8",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.1.5",
                "vimeo/psalm": "^4.22"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Collections\\": "lib/Doctrine/Common/Collections"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "PHP Doctrine Collections library that adds additional functionality on top of PHP arrays.",
            "homepage": "https://www.doctrine-project.org/projects/collections.html",
            "keywords": [
                "array",
                "collections",
                "iterators",
                "php"
            ],
            "support": {
                "issues": "https://github.com/doctrine/collections/issues",
                "source": "https://github.com/doctrine/collections/tree/1.8.0"
            },
            "time": "2022-09-01T20:12:10+00:00"
        },
        {
            "name": "doctrine/common",
            "version": "3.4.3",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/common.git",
                "reference": "8b5e5650391f851ed58910b3e3d48a71062eeced"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/common/zipball/8b5e5650391f851ed58910b3e3d48a71062eeced",
                "reference": "8b5e5650391f851ed58910b3e3d48a71062eeced",
                "shasum": ""
            },
            "require": {
                "doctrine/persistence": "^2.0 || ^3.0",
                "php": "^7.1 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9.0 || ^10.0",
                "doctrine/collections": "^1",
                "phpstan/phpstan": "^1.4.1",
                "phpstan/phpstan-phpunit": "^1",
                "phpunit/phpunit": "^7.5.20 || ^8.5 || ^9.0",
                "squizlabs/php_codesniffer": "^3.0",
                "symfony/phpunit-bridge": "^6.1",
                "vimeo/psalm": "^4.4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                },
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com"
                }
            ],
            "description": "PHP Doctrine Common project is a library that provides additional functionality that other Doctrine projects depend on such as better reflection support, proxies and much more.",
            "homepage": "https://www.doctrine-project.org/projects/common.html",
            "keywords": [
                "common",
                "doctrine",
                "php"
            ],
            "support": {
                "issues": "https://github.com/doctrine/common/issues",
                "source": "https://github.com/doctrine/common/tree/3.4.3"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fcommon",
                    "type": "tidelift"
                }
            ],
            "time": "2022-10-09T11:47:59+00:00"
        },
        {
            "name": "doctrine/dbal",
            "version": "3.7.3",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/dbal.git",
                "reference": "ce594cbc39a4866c544f1a970d285ff0548221ad"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/dbal/zipball/ce594cbc39a4866c544f1a970d285ff0548221ad",
                "reference": "ce594cbc39a4866c544f1a970d285ff0548221ad",
                "shasum": ""
            },
            "require": {
                "composer-runtime-api": "^2",
                "doctrine/cache": "^1.11|^2.0",
                "doctrine/deprecations": "^0.5.3|^1",
                "doctrine/event-manager": "^1|^2",
                "php": "^7.4 || ^8.0",
                "psr/cache": "^1|^2|^3",
                "psr/log": "^1|^2|^3"
            },
            "require-dev": {
                "doctrine/coding-standard": "12.0.0",
                "fig/log-test": "^1",
                "jetbrains/phpstorm-stubs": "2023.1",
                "phpstan/phpstan": "1.10.56",
                "phpstan/phpstan-strict-rules": "^1.5",
                "phpunit/phpunit": "9.6.15",
                "psalm/plugin-phpunit": "0.18.4",
                "slevomat/coding-standard": "8.13.1",
                "squizlabs/php_codesniffer": "3.8.1",
                "symfony/cache": "^5.4|^6.0|^7.0",
                "symfony/console": "^4.4|^5.4|^6.0|^7.0",
                "vimeo/psalm": "4.30.0"
            },
            "suggest": {
                "symfony/console": "For helpful console commands such as SQL execution and import of files."
            },
            "bin": [
                "bin/doctrine-dbal"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\DBAL\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                }
            ],
            "description": "Powerful PHP database abstraction layer (DBAL) with many features for database schema introspection and management.",
            "homepage": "https://www.doctrine-project.org/projects/dbal.html",
            "keywords": [
                "abstraction",
                "database",
                "db2",
                "dbal",
                "mariadb",
                "mssql",
                "mysql",
                "oci8",
                "oracle",
                "pdo",
                "pgsql",
                "postgresql",
                "queryobject",
                "sasql",
                "sql",
                "sqlite",
                "sqlserver",
                "sqlsrv"
            ],
            "support": {
                "issues": "https://github.com/doctrine/dbal/issues",
                "source": "https://github.com/doctrine/dbal/tree/3.7.3"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fdbal",
                    "type": "tidelift"
                }
            ],
            "time": "2024-01-21T07:53:09+00:00"
        },
        {
            "name": "doctrine/deprecations",
            "version": "1.1.2",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/deprecations.git",
                "reference": "4f2d4f2836e7ec4e7a8625e75c6aa916004db931"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/deprecations/zipball/4f2d4f2836e7ec4e7a8625e75c6aa916004db931",
                "reference": "4f2d4f2836e7ec4e7a8625e75c6aa916004db931",
                "shasum": ""
            },
            "require": {
                "php": "^7.1 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9",
                "phpstan/phpstan": "1.4.10 || 1.10.15",
                "phpstan/phpstan-phpunit": "^1.0",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "psalm/plugin-phpunit": "0.18.4",
                "psr/log": "^1 || ^2 || ^3",
                "vimeo/psalm": "4.30.0 || 5.12.0"
            },
            "suggest": {
                "psr/log": "Allows logging deprecations via PSR-3 logger implementation"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Deprecations\\": "lib/Doctrine/Deprecations"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "A small layer on top of trigger_error(E_USER_DEPRECATED) or PSR-3 logging with options to disable all deprecations or selectively for packages.",
            "homepage": "https://www.doctrine-project.org/",
            "support": {
                "issues": "https://github.com/doctrine/deprecations/issues",
                "source": "https://github.com/doctrine/deprecations/tree/1.1.2"
            },
            "time": "2023-09-27T20:04:15+00:00"
        },
        {
            "name": "doctrine/doctrine-bundle",
            "version": "2.7.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/DoctrineBundle.git",
                "reference": "d2088fc50494e4e7441fecca54732245a613eeb6"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/DoctrineBundle/zipball/d2088fc50494e4e7441fecca54732245a613eeb6",
                "reference": "d2088fc50494e4e7441fecca54732245a613eeb6",
                "shasum": ""
            },
            "require": {
                "doctrine/annotations": "^1",
                "doctrine/cache": "^1.11 || ^2.0",
                "doctrine/dbal": "^2.13.1|^3.3.2",
                "doctrine/persistence": "^2.2|^3",
                "doctrine/sql-formatter": "^1.0.1",
                "php": "^7.1 || ^8.0",
                "symfony/cache": "^4.3.3|^5.0|^6.0",
                "symfony/config": "^4.4.3|^5.0|^6.0",
                "symfony/console": "^3.4.30|^4.3.3|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4.18|^5.0|^6.0",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/doctrine-bridge": "^4.4.22|^5.2.7|^6.0",
                "symfony/framework-bundle": "^3.4.30|^4.3.3|^5.0|^6.0",
                "symfony/service-contracts": "^1.1.1|^2.0|^3"
            },
            "conflict": {
                "doctrine/orm": "<2.10|>=3.0",
                "twig/twig": "<1.34|>=2.0,<2.4"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9.0",
                "doctrine/orm": "^2.11 || ^3.0",
                "friendsofphp/proxy-manager-lts": "^1.0",
                "phpunit/phpunit": "^7.5 || ^8.0 || ^9.3 || ^10.0",
                "psalm/plugin-phpunit": "^0.16.1",
                "psalm/plugin-symfony": "^3",
                "psr/log": "^1.1.4|^2.0|^3.0",
                "symfony/phpunit-bridge": "^5.2|^6.0",
                "symfony/property-info": "^4.3.3|^5.0|^6.0",
                "symfony/proxy-manager-bridge": "^3.4|^4.3.3|^5.0|^6.0",
                "symfony/security-bundle": "^4.4|^5.0|^6.0",
                "symfony/twig-bridge": "^3.4.30|^4.3.3|^5.0|^6.0",
                "symfony/validator": "^3.4.30|^4.3.3|^5.0|^6.0",
                "symfony/web-profiler-bundle": "^3.4.30|^4.3.3|^5.0|^6.0",
                "symfony/yaml": "^3.4.30|^4.3.3|^5.0|^6.0",
                "twig/twig": "^1.34|^2.12|^3.0",
                "vimeo/psalm": "^4.7"
            },
            "suggest": {
                "doctrine/orm": "The Doctrine ORM integration is optional in the bundle.",
                "ext-pdo": "*",
                "symfony/web-profiler-bundle": "To use the data collector."
            },
            "type": "symfony-bundle",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Bundle\\DoctrineBundle\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                },
                {
                    "name": "Doctrine Project",
                    "homepage": "https://www.doctrine-project.org/"
                }
            ],
            "description": "Symfony DoctrineBundle",
            "homepage": "https://www.doctrine-project.org",
            "keywords": [
                "database",
                "dbal",
                "orm",
                "persistence"
            ],
            "support": {
                "issues": "https://github.com/doctrine/DoctrineBundle/issues",
                "source": "https://github.com/doctrine/DoctrineBundle/tree/2.7.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fdoctrine-bundle",
                    "type": "tidelift"
                }
            ],
            "time": "2022-06-10T10:55:26+00:00"
        },
        {
            "name": "doctrine/doctrine-migrations-bundle",
            "version": "3.2.5",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/DoctrineMigrationsBundle.git",
                "reference": "90be4395597432a05ae9aad5e6fe490622226a77"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/DoctrineMigrationsBundle/zipball/90be4395597432a05ae9aad5e6fe490622226a77",
                "reference": "90be4395597432a05ae9aad5e6fe490622226a77",
                "shasum": ""
            },
            "require": {
                "doctrine/doctrine-bundle": "~1.0|~2.0",
                "doctrine/migrations": "^3.2",
                "php": "^7.2|^8.0",
                "symfony/framework-bundle": "~3.4|~4.0|~5.0|~6.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9",
                "doctrine/orm": "^2.6",
                "doctrine/persistence": "^1.3||^2.0",
                "phpstan/phpstan": "^1.4",
                "phpstan/phpstan-deprecation-rules": "^1",
                "phpstan/phpstan-phpunit": "^1",
                "phpstan/phpstan-strict-rules": "^1.1",
                "phpunit/phpunit": "^8.5|^9.5",
                "vimeo/psalm": "^4.22"
            },
            "type": "symfony-bundle",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Bundle\\MigrationsBundle\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Doctrine Project",
                    "homepage": "https://www.doctrine-project.org"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony DoctrineMigrationsBundle",
            "homepage": "https://www.doctrine-project.org",
            "keywords": [
                "dbal",
                "migrations",
                "schema"
            ],
            "support": {
                "issues": "https://github.com/doctrine/DoctrineMigrationsBundle/issues",
                "source": "https://github.com/doctrine/DoctrineMigrationsBundle/tree/3.2.5"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fdoctrine-migrations-bundle",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-13T08:28:17+00:00"
        },
        {
            "name": "doctrine/event-manager",
            "version": "1.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/event-manager.git",
                "reference": "95aa4cb529f1e96576f3fda9f5705ada4056a520"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/event-manager/zipball/95aa4cb529f1e96576f3fda9f5705ada4056a520",
                "reference": "95aa4cb529f1e96576f3fda9f5705ada4056a520",
                "shasum": ""
            },
            "require": {
                "doctrine/deprecations": "^0.5.3 || ^1",
                "php": "^7.1 || ^8.0"
            },
            "conflict": {
                "doctrine/common": "<2.9"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9 || ^10",
                "phpstan/phpstan": "~1.4.10 || ^1.8.8",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "vimeo/psalm": "^4.24"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                },
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com"
                }
            ],
            "description": "The Doctrine Event Manager is a simple PHP event system that was built to be used with the various Doctrine projects.",
            "homepage": "https://www.doctrine-project.org/projects/event-manager.html",
            "keywords": [
                "event",
                "event dispatcher",
                "event manager",
                "event system",
                "events"
            ],
            "support": {
                "issues": "https://github.com/doctrine/event-manager/issues",
                "source": "https://github.com/doctrine/event-manager/tree/1.2.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fevent-manager",
                    "type": "tidelift"
                }
            ],
            "time": "2022-10-12T20:51:15+00:00"
        },
        {
            "name": "doctrine/inflector",
            "version": "2.0.9",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/inflector.git",
                "reference": "2930cd5ef353871c821d5c43ed030d39ac8cfe65"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/inflector/zipball/2930cd5ef353871c821d5c43ed030d39ac8cfe65",
                "reference": "2930cd5ef353871c821d5c43ed030d39ac8cfe65",
                "shasum": ""
            },
            "require": {
                "php": "^7.2 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^11.0",
                "phpstan/phpstan": "^1.8",
                "phpstan/phpstan-phpunit": "^1.1",
                "phpstan/phpstan-strict-rules": "^1.3",
                "phpunit/phpunit": "^8.5 || ^9.5",
                "vimeo/psalm": "^4.25 || ^5.4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Inflector\\": "lib/Doctrine/Inflector"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "PHP Doctrine Inflector is a small library that can perform string manipulations with regard to upper/lowercase and singular/plural forms of words.",
            "homepage": "https://www.doctrine-project.org/projects/inflector.html",
            "keywords": [
                "inflection",
                "inflector",
                "lowercase",
                "manipulation",
                "php",
                "plural",
                "singular",
                "strings",
                "uppercase",
                "words"
            ],
            "support": {
                "issues": "https://github.com/doctrine/inflector/issues",
                "source": "https://github.com/doctrine/inflector/tree/2.0.9"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Finflector",
                    "type": "tidelift"
                }
            ],
            "time": "2024-01-15T18:05:13+00:00"
        },
        {
            "name": "doctrine/instantiator",
            "version": "1.5.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/instantiator.git",
                "reference": "0a0fa9780f5d4e507415a065172d26a98d02047b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/instantiator/zipball/0a0fa9780f5d4e507415a065172d26a98d02047b",
                "reference": "0a0fa9780f5d4e507415a065172d26a98d02047b",
                "shasum": ""
            },
            "require": {
                "php": "^7.1 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9 || ^11",
                "ext-pdo": "*",
                "ext-phar": "*",
                "phpbench/phpbench": "^0.16 || ^1",
                "phpstan/phpstan": "^1.4",
                "phpstan/phpstan-phpunit": "^1",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "vimeo/psalm": "^4.30 || ^5.4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Instantiator\\": "src/Doctrine/Instantiator/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com",
                    "homepage": "https://ocramius.github.io/"
                }
            ],
            "description": "A small, lightweight utility to instantiate objects in PHP without invoking their constructors",
            "homepage": "https://www.doctrine-project.org/projects/instantiator.html",
            "keywords": [
                "constructor",
                "instantiate"
            ],
            "support": {
                "issues": "https://github.com/doctrine/instantiator/issues",
                "source": "https://github.com/doctrine/instantiator/tree/1.5.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Finstantiator",
                    "type": "tidelift"
                }
            ],
            "time": "2022-12-30T00:15:36+00:00"
        },
        {
            "name": "doctrine/lexer",
            "version": "2.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/lexer.git",
                "reference": "39ab8fcf5a51ce4b85ca97c7a7d033eb12831124"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/lexer/zipball/39ab8fcf5a51ce4b85ca97c7a7d033eb12831124",
                "reference": "39ab8fcf5a51ce4b85ca97c7a7d033eb12831124",
                "shasum": ""
            },
            "require": {
                "doctrine/deprecations": "^1.0",
                "php": "^7.1 || ^8.0"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9 || ^10",
                "phpstan/phpstan": "^1.3",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.5",
                "psalm/plugin-phpunit": "^0.18.3",
                "vimeo/psalm": "^4.11 || ^5.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Common\\Lexer\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                }
            ],
            "description": "PHP Doctrine Lexer parser library that can be used in Top-Down, Recursive Descent Parsers.",
            "homepage": "https://www.doctrine-project.org/projects/lexer.html",
            "keywords": [
                "annotations",
                "docblock",
                "lexer",
                "parser",
                "php"
            ],
            "support": {
                "issues": "https://github.com/doctrine/lexer/issues",
                "source": "https://github.com/doctrine/lexer/tree/2.1.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Flexer",
                    "type": "tidelift"
                }
            ],
            "time": "2022-12-14T08:49:07+00:00"
        },
        {
            "name": "doctrine/migrations",
            "version": "3.5.5",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/migrations.git",
                "reference": "4b1e2b6ba71d21d0c5be22ed03b6fc954d20b204"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/migrations/zipball/4b1e2b6ba71d21d0c5be22ed03b6fc954d20b204",
                "reference": "4b1e2b6ba71d21d0c5be22ed03b6fc954d20b204",
                "shasum": ""
            },
            "require": {
                "composer-runtime-api": "^2",
                "doctrine/dbal": "^3.5.1",
                "doctrine/deprecations": "^0.5.3 || ^1",
                "doctrine/event-manager": "^1.2 || ^2.0",
                "friendsofphp/proxy-manager-lts": "^1.0",
                "php": "^7.4 || ^8.0",
                "psr/log": "^1.1.3 || ^2 || ^3",
                "symfony/console": "^4.4.16 || ^5.4 || ^6.0",
                "symfony/stopwatch": "^4.4 || ^5.4 || ^6.0"
            },
            "conflict": {
                "doctrine/orm": "<2.12"
            },
            "require-dev": {
                "doctrine/coding-standard": "^9",
                "doctrine/orm": "^2.13",
                "doctrine/persistence": "^2 || ^3",
                "doctrine/sql-formatter": "^1.0",
                "ext-pdo_sqlite": "*",
                "phpstan/phpstan": "^1.5",
                "phpstan/phpstan-deprecation-rules": "^1",
                "phpstan/phpstan-phpunit": "^1.1",
                "phpstan/phpstan-strict-rules": "^1.1",
                "phpstan/phpstan-symfony": "^1.1",
                "phpunit/phpunit": "^9.5",
                "symfony/cache": "^4.4 || ^5.4 || ^6.0",
                "symfony/process": "^4.4 || ^5.4 || ^6.0",
                "symfony/yaml": "^4.4 || ^5.4 || ^6.0"
            },
            "suggest": {
                "doctrine/sql-formatter": "Allows to generate formatted SQL with the diff command.",
                "symfony/yaml": "Allows the use of yaml for migration configuration files."
            },
            "bin": [
                "bin/doctrine-migrations"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Migrations\\": "lib/Doctrine/Migrations"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Michael Simonson",
                    "email": "contact@mikesimonson.com"
                }
            ],
            "description": "PHP Doctrine Migrations project offer additional functionality on top of the database abstraction layer (DBAL) for versioning your database schema and easily deploying changes to it. It is a very easy to use and a powerful tool.",
            "homepage": "https://www.doctrine-project.org/projects/migrations.html",
            "keywords": [
                "database",
                "dbal",
                "migrations"
            ],
            "support": {
                "issues": "https://github.com/doctrine/migrations/issues",
                "source": "https://github.com/doctrine/migrations/tree/3.5.5"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fmigrations",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-18T12:44:30+00:00"
        },
        {
            "name": "doctrine/orm",
            "version": "2.17.3",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/orm.git",
                "reference": "398ab0547aaf90bdb352b560a94c24f44ff00670"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/orm/zipball/398ab0547aaf90bdb352b560a94c24f44ff00670",
                "reference": "398ab0547aaf90bdb352b560a94c24f44ff00670",
                "shasum": ""
            },
            "require": {
                "composer-runtime-api": "^2",
                "doctrine/cache": "^1.12.1 || ^2.1.1",
                "doctrine/collections": "^1.5 || ^2.1",
                "doctrine/common": "^3.0.3",
                "doctrine/dbal": "^2.13.1 || ^3.2",
                "doctrine/deprecations": "^0.5.3 || ^1",
                "doctrine/event-manager": "^1.2 || ^2",
                "doctrine/inflector": "^1.4 || ^2.0",
                "doctrine/instantiator": "^1.3 || ^2",
                "doctrine/lexer": "^2",
                "doctrine/persistence": "^2.4 || ^3",
                "ext-ctype": "*",
                "php": "^7.1 || ^8.0",
                "psr/cache": "^1 || ^2 || ^3",
                "symfony/console": "^4.2 || ^5.0 || ^6.0 || ^7.0",
                "symfony/polyfill-php72": "^1.23",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "doctrine/annotations": "<1.13 || >= 3.0"
            },
            "require-dev": {
                "doctrine/annotations": "^1.13 || ^2",
                "doctrine/coding-standard": "^9.0.2 || ^12.0",
                "phpbench/phpbench": "^0.16.10 || ^1.0",
                "phpstan/phpstan": "~1.4.10 || 1.10.35",
                "phpunit/phpunit": "^7.5 || ^8.5 || ^9.6",
                "psr/log": "^1 || ^2 || ^3",
                "squizlabs/php_codesniffer": "3.7.2",
                "symfony/cache": "^4.4 || ^5.4 || ^6.4 || ^7.0",
                "symfony/var-exporter": "^4.4 || ^5.4 || ^6.2 || ^7.0",
                "symfony/yaml": "^3.4 || ^4.0 || ^5.0 || ^6.0 || ^7.0",
                "vimeo/psalm": "4.30.0 || 5.16.0"
            },
            "suggest": {
                "ext-dom": "Provides support for XSD validation for XML mapping files",
                "symfony/cache": "Provides cache support for Setup Tool with doctrine/cache 2.0",
                "symfony/yaml": "If you want to use YAML Metadata Mapping Driver"
            },
            "bin": [
                "bin/doctrine"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\ORM\\": "lib/Doctrine/ORM"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com"
                }
            ],
            "description": "Object-Relational-Mapper for PHP",
            "homepage": "https://www.doctrine-project.org/projects/orm.html",
            "keywords": [
                "database",
                "orm"
            ],
            "support": {
                "issues": "https://github.com/doctrine/orm/issues",
                "source": "https://github.com/doctrine/orm/tree/2.17.3"
            },
            "time": "2024-01-16T21:32:04+00:00"
        },
        {
            "name": "doctrine/persistence",
            "version": "3.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/persistence.git",
                "reference": "63fee8c33bef740db6730eb2a750cd3da6495603"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/persistence/zipball/63fee8c33bef740db6730eb2a750cd3da6495603",
                "reference": "63fee8c33bef740db6730eb2a750cd3da6495603",
                "shasum": ""
            },
            "require": {
                "doctrine/event-manager": "^1 || ^2",
                "php": "^7.2 || ^8.0",
                "psr/cache": "^1.0 || ^2.0 || ^3.0"
            },
            "conflict": {
                "doctrine/common": "<2.10"
            },
            "require-dev": {
                "composer/package-versions-deprecated": "^1.11",
                "doctrine/coding-standard": "^11",
                "doctrine/common": "^3.0",
                "phpstan/phpstan": "1.9.4",
                "phpstan/phpstan-phpunit": "^1",
                "phpstan/phpstan-strict-rules": "^1.1",
                "phpunit/phpunit": "^8.5 || ^9.5",
                "symfony/cache": "^4.4 || ^5.4 || ^6.0",
                "vimeo/psalm": "4.30.0 || 5.3.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\Persistence\\": "src/Persistence"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Guilherme Blanco",
                    "email": "guilhermeblanco@gmail.com"
                },
                {
                    "name": "Roman Borschel",
                    "email": "roman@code-factory.org"
                },
                {
                    "name": "Benjamin Eberlei",
                    "email": "kontakt@beberlei.de"
                },
                {
                    "name": "Jonathan Wage",
                    "email": "jonwage@gmail.com"
                },
                {
                    "name": "Johannes Schmitt",
                    "email": "schmittjoh@gmail.com"
                },
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com"
                }
            ],
            "description": "The Doctrine Persistence project is a set of shared interfaces and functionality that the different Doctrine object mappers share.",
            "homepage": "https://www.doctrine-project.org/projects/persistence.html",
            "keywords": [
                "mapper",
                "object",
                "odm",
                "orm",
                "persistence"
            ],
            "support": {
                "issues": "https://github.com/doctrine/persistence/issues",
                "source": "https://github.com/doctrine/persistence/tree/3.2.0"
            },
            "funding": [
                {
                    "url": "https://www.doctrine-project.org/sponsorship.html",
                    "type": "custom"
                },
                {
                    "url": "https://www.patreon.com/phpdoctrine",
                    "type": "patreon"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/doctrine%2Fpersistence",
                    "type": "tidelift"
                }
            ],
            "time": "2023-05-17T18:32:04+00:00"
        },
        {
            "name": "doctrine/sql-formatter",
            "version": "1.1.3",
            "source": {
                "type": "git",
                "url": "https://github.com/doctrine/sql-formatter.git",
                "reference": "25a06c7bf4c6b8218f47928654252863ffc890a5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/doctrine/sql-formatter/zipball/25a06c7bf4c6b8218f47928654252863ffc890a5",
                "reference": "25a06c7bf4c6b8218f47928654252863ffc890a5",
                "shasum": ""
            },
            "require": {
                "php": "^7.1 || ^8.0"
            },
            "require-dev": {
                "bamarni/composer-bin-plugin": "^1.4"
            },
            "bin": [
                "bin/sql-formatter"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Doctrine\\SqlFormatter\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jeremy Dorn",
                    "email": "jeremy@jeremydorn.com",
                    "homepage": "https://jeremydorn.com/"
                }
            ],
            "description": "a PHP SQL highlighting library",
            "homepage": "https://github.com/doctrine/sql-formatter/",
            "keywords": [
                "highlight",
                "sql"
            ],
            "support": {
                "issues": "https://github.com/doctrine/sql-formatter/issues",
                "source": "https://github.com/doctrine/sql-formatter/tree/1.1.3"
            },
            "time": "2022-05-23T21:33:49+00:00"
        },
        {
            "name": "egulias/email-validator",
            "version": "3.2.6",
            "source": {
                "type": "git",
                "url": "https://github.com/egulias/EmailValidator.git",
                "reference": "e5997fa97e8790cdae03a9cbd5e78e45e3c7bda7"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/egulias/EmailValidator/zipball/e5997fa97e8790cdae03a9cbd5e78e45e3c7bda7",
                "reference": "e5997fa97e8790cdae03a9cbd5e78e45e3c7bda7",
                "shasum": ""
            },
            "require": {
                "doctrine/lexer": "^1.2|^2",
                "php": ">=7.2",
                "symfony/polyfill-intl-idn": "^1.15"
            },
            "require-dev": {
                "phpunit/phpunit": "^8.5.8|^9.3.3",
                "vimeo/psalm": "^4"
            },
            "suggest": {
                "ext-intl": "PHP Internationalization Libraries are required to use the SpoofChecking validation"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Egulias\\EmailValidator\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Eduardo Gulias Davis"
                }
            ],
            "description": "A library for validating emails against several RFCs",
            "homepage": "https://github.com/egulias/EmailValidator",
            "keywords": [
                "email",
                "emailvalidation",
                "emailvalidator",
                "validation",
                "validator"
            ],
            "support": {
                "issues": "https://github.com/egulias/EmailValidator/issues",
                "source": "https://github.com/egulias/EmailValidator/tree/3.2.6"
            },
            "funding": [
                {
                    "url": "https://github.com/egulias",
                    "type": "github"
                }
            ],
            "time": "2023-06-01T07:04:22+00:00"
        },
        {
            "name": "fig/link-util",
            "version": "1.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/link-util.git",
                "reference": "10e52348a2e9ad4581f2bf3e16458f0861a88c6a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/link-util/zipball/10e52348a2e9ad4581f2bf3e16458f0861a88c6a",
                "reference": "10e52348a2e9ad4581f2bf3e16458f0861a88c6a",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.0",
                "psr/link": "^1.1.0 | ^2.0.0"
            },
            "provide": {
                "psr/link-implementation": "1.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^9",
                "squizlabs/php_codesniffer": "^2.3.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Fig\\Link\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common utility implementations for HTTP links",
            "keywords": [
                "http",
                "http-link",
                "link",
                "psr",
                "psr-13",
                "rest"
            ],
            "support": {
                "issues": "https://github.com/php-fig/link-util/issues",
                "source": "https://github.com/php-fig/link-util/tree/1.2.0"
            },
            "time": "2021-03-11T23:09:19+00:00"
        },
        {
            "name": "friendsofphp/proxy-manager-lts",
            "version": "v1.0.16",
            "source": {
                "type": "git",
                "url": "https://github.com/FriendsOfPHP/proxy-manager-lts.git",
                "reference": "ecadbdc9052e4ad08c60c8a02268712e50427f7c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/FriendsOfPHP/proxy-manager-lts/zipball/ecadbdc9052e4ad08c60c8a02268712e50427f7c",
                "reference": "ecadbdc9052e4ad08c60c8a02268712e50427f7c",
                "shasum": ""
            },
            "require": {
                "laminas/laminas-code": "~3.4.1|^4.0",
                "php": ">=7.1",
                "symfony/filesystem": "^4.4.17|^5.0|^6.0|^7.0"
            },
            "conflict": {
                "laminas/laminas-stdlib": "<3.2.1",
                "zendframework/zend-stdlib": "<3.2.1"
            },
            "replace": {
                "ocramius/proxy-manager": "^2.1"
            },
            "require-dev": {
                "ext-phar": "*",
                "symfony/phpunit-bridge": "^5.4|^6.0|^7.0"
            },
            "type": "library",
            "extra": {
                "thanks": {
                    "name": "ocramius/proxy-manager",
                    "url": "https://github.com/Ocramius/ProxyManager"
                }
            },
            "autoload": {
                "psr-4": {
                    "ProxyManager\\": "src/ProxyManager"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Marco Pivetta",
                    "email": "ocramius@gmail.com",
                    "homepage": "https://ocramius.github.io/"
                },
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                }
            ],
            "description": "Adding support for a wider range of PHP versions to ocramius/proxy-manager",
            "homepage": "https://github.com/FriendsOfPHP/proxy-manager-lts",
            "keywords": [
                "aop",
                "lazy loading",
                "proxy",
                "proxy pattern",
                "service proxies"
            ],
            "support": {
                "issues": "https://github.com/FriendsOfPHP/proxy-manager-lts/issues",
                "source": "https://github.com/FriendsOfPHP/proxy-manager-lts/tree/v1.0.16"
            },
            "funding": [
                {
                    "url": "https://github.com/Ocramius",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/ocramius/proxy-manager",
                    "type": "tidelift"
                }
            ],
            "time": "2023-05-24T07:17:17+00:00"
        },
        {
            "name": "graze/guzzle-jsonrpc",
            "version": "3.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/graze/guzzle-jsonrpc.git",
                "reference": "c4513b7659534792b906723158a8388f54275a61"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/graze/guzzle-jsonrpc/zipball/c4513b7659534792b906723158a8388f54275a61",
                "reference": "c4513b7659534792b906723158a8388f54275a61",
                "shasum": ""
            },
            "require": {
                "guzzlehttp/guzzle": "^6.0",
                "guzzlehttp/promises": "^1.0",
                "php": ">=5.5",
                "psr/http-message": "^1.0"
            },
            "require-dev": {
                "adlawson/timezone": "~1.0",
                "fabpot/php-cs-fixer": "~0.5",
                "mockery/mockery": "~0.9",
                "phpunit/phpunit": "~4.3"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/functions_include.php"
                ],
                "psr-4": {
                    "Graze\\GuzzleHttp\\JsonRpc\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Graze tech team",
                    "homepage": "https://github.com/graze/guzzle-jsonrpc/graphs/contributors"
                }
            ],
            "description": "JSON-RPC 2.0 client for Guzzle",
            "homepage": "https://github.com/graze/guzzle-jsonrpc",
            "keywords": [
                "Guzzle",
                "guzzlehttp",
                "http",
                "json",
                "json-rpc",
                "jsonrpc",
                "ring",
                "rpc"
            ],
            "support": {
                "issues": "https://github.com/graze/guzzle-jsonrpc/issues",
                "source": "https://github.com/graze/guzzle-jsonrpc/tree/master"
            },
            "time": "2016-02-16T15:18:21+00:00"
        },
        {
            "name": "guzzlehttp/guzzle",
            "version": "6.5.8",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/guzzle.git",
                "reference": "a52f0440530b54fa079ce76e8c5d196a42cad981"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/guzzle/zipball/a52f0440530b54fa079ce76e8c5d196a42cad981",
                "reference": "a52f0440530b54fa079ce76e8c5d196a42cad981",
                "shasum": ""
            },
            "require": {
                "ext-json": "*",
                "guzzlehttp/promises": "^1.0",
                "guzzlehttp/psr7": "^1.9",
                "php": ">=5.5",
                "symfony/polyfill-intl-idn": "^1.17"
            },
            "require-dev": {
                "ext-curl": "*",
                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.4 || ^7.0",
                "psr/log": "^1.1"
            },
            "suggest": {
                "psr/log": "Required for using the Log middleware"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.5-dev"
                }
            },
            "autoload": {
                "files": [
                    "src/functions_include.php"
                ],
                "psr-4": {
                    "GuzzleHttp\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Graham Campbell",
                    "email": "hello@gjcampbell.co.uk",
                    "homepage": "https://github.com/GrahamCampbell"
                },
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "Jeremy Lindblom",
                    "email": "jeremeamia@gmail.com",
                    "homepage": "https://github.com/jeremeamia"
                },
                {
                    "name": "George Mponos",
                    "email": "gmponos@gmail.com",
                    "homepage": "https://github.com/gmponos"
                },
                {
                    "name": "Tobias Nyholm",
                    "email": "tobias.nyholm@gmail.com",
                    "homepage": "https://github.com/Nyholm"
                },
                {
                    "name": "Márk Sági-Kazár",
                    "email": "mark.sagikazar@gmail.com",
                    "homepage": "https://github.com/sagikazarmark"
                },
                {
                    "name": "Tobias Schultze",
                    "email": "webmaster@tubo-world.de",
                    "homepage": "https://github.com/Tobion"
                }
            ],
            "description": "Guzzle is a PHP HTTP client library",
            "homepage": "http://guzzlephp.org/",
            "keywords": [
                "client",
                "curl",
                "framework",
                "http",
                "http client",
                "rest",
                "web service"
            ],
            "support": {
                "issues": "https://github.com/guzzle/guzzle/issues",
                "source": "https://github.com/guzzle/guzzle/tree/6.5.8"
            },
            "funding": [
                {
                    "url": "https://github.com/GrahamCampbell",
                    "type": "github"
                },
                {
                    "url": "https://github.com/Nyholm",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/guzzlehttp/guzzle",
                    "type": "tidelift"
                }
            ],
            "time": "2022-06-20T22:16:07+00:00"
        },
        {
            "name": "guzzlehttp/promises",
            "version": "1.5.3",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/promises.git",
                "reference": "67ab6e18aaa14d753cc148911d273f6e6cb6721e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/promises/zipball/67ab6e18aaa14d753cc148911d273f6e6cb6721e",
                "reference": "67ab6e18aaa14d753cc148911d273f6e6cb6721e",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5"
            },
            "require-dev": {
                "symfony/phpunit-bridge": "^4.4 || ^5.1"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/functions_include.php"
                ],
                "psr-4": {
                    "GuzzleHttp\\Promise\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Graham Campbell",
                    "email": "hello@gjcampbell.co.uk",
                    "homepage": "https://github.com/GrahamCampbell"
                },
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "Tobias Nyholm",
                    "email": "tobias.nyholm@gmail.com",
                    "homepage": "https://github.com/Nyholm"
                },
                {
                    "name": "Tobias Schultze",
                    "email": "webmaster@tubo-world.de",
                    "homepage": "https://github.com/Tobion"
                }
            ],
            "description": "Guzzle promises library",
            "keywords": [
                "promise"
            ],
            "support": {
                "issues": "https://github.com/guzzle/promises/issues",
                "source": "https://github.com/guzzle/promises/tree/1.5.3"
            },
            "funding": [
                {
                    "url": "https://github.com/GrahamCampbell",
                    "type": "github"
                },
                {
                    "url": "https://github.com/Nyholm",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/guzzlehttp/promises",
                    "type": "tidelift"
                }
            ],
            "time": "2023-05-21T12:31:43+00:00"
        },
        {
            "name": "guzzlehttp/psr7",
            "version": "1.9.1",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/psr7.git",
                "reference": "e4490cabc77465aaee90b20cfc9a770f8c04be6b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/psr7/zipball/e4490cabc77465aaee90b20cfc9a770f8c04be6b",
                "reference": "e4490cabc77465aaee90b20cfc9a770f8c04be6b",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4.0",
                "psr/http-message": "~1.0",
                "ralouphie/getallheaders": "^2.0.5 || ^3.0.0"
            },
            "provide": {
                "psr/http-message-implementation": "1.0"
            },
            "require-dev": {
                "ext-zlib": "*",
                "phpunit/phpunit": "~4.8.36 || ^5.7.27 || ^6.5.14 || ^7.5.20 || ^8.5.8 || ^9.3.10"
            },
            "suggest": {
                "laminas/laminas-httphandlerrunner": "Emit PSR-7 responses"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/functions_include.php"
                ],
                "psr-4": {
                    "GuzzleHttp\\Psr7\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Graham Campbell",
                    "email": "hello@gjcampbell.co.uk",
                    "homepage": "https://github.com/GrahamCampbell"
                },
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "George Mponos",
                    "email": "gmponos@gmail.com",
                    "homepage": "https://github.com/gmponos"
                },
                {
                    "name": "Tobias Nyholm",
                    "email": "tobias.nyholm@gmail.com",
                    "homepage": "https://github.com/Nyholm"
                },
                {
                    "name": "Márk Sági-Kazár",
                    "email": "mark.sagikazar@gmail.com",
                    "homepage": "https://github.com/sagikazarmark"
                },
                {
                    "name": "Tobias Schultze",
                    "email": "webmaster@tubo-world.de",
                    "homepage": "https://github.com/Tobion"
                }
            ],
            "description": "PSR-7 message implementation that also provides common utility methods",
            "keywords": [
                "http",
                "message",
                "psr-7",
                "request",
                "response",
                "stream",
                "uri",
                "url"
            ],
            "support": {
                "issues": "https://github.com/guzzle/psr7/issues",
                "source": "https://github.com/guzzle/psr7/tree/1.9.1"
            },
            "funding": [
                {
                    "url": "https://github.com/GrahamCampbell",
                    "type": "github"
                },
                {
                    "url": "https://github.com/Nyholm",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/guzzlehttp/psr7",
                    "type": "tidelift"
                }
            ],
            "time": "2023-04-17T16:00:37+00:00"
        },
        {
            "name": "irontec/ivoz-core",
            "version": "4.18.0",
            "source": {
                "type": "git",
                "url": "https://github.com/irontec/ivoz-core.git",
                "reference": "f39310b119f7924c5e9f098aea4252e2bd806086"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/irontec/ivoz-core/zipball/f39310b119f7924c5e9f098aea4252e2bd806086",
                "reference": "f39310b119f7924c5e9f098aea4252e2bd806086",
                "shasum": ""
            },
            "require": {
                "beberlei/assert": "^3.0",
                "doctrine/dbal": "^3.2",
                "doctrine/doctrine-migrations-bundle": "^3.0.3",
                "doctrine/orm": "^2.8",
                "graze/guzzle-jsonrpc": "3.2.*",
                "guzzlehttp/guzzle": "^6.3",
                "lexik/jwt-authentication-bundle": "^2.5",
                "php": ">=8.0",
                "ramsey/uuid": "^4.2",
                "symfony/expression-language": "^5.1",
                "symfony/finder": "^5.1",
                "symfony/http-foundation": "^5.1",
                "symfony/mailer": "^5.4",
                "symfony/mime": "^5.4",
                "symfony/serializer": "^5.1"
            },
            "conflict": {
                "symfony/cache": "^6.0",
                "symfony/event-dispatcher": "^6.0",
                "symfony/filesystem": "^6.0",
                "symfony/monolog-bridge": "^6.0",
                "symfony/options-resolver": "^6.0",
                "symfony/password-hasher": "^6.0",
                "symfony/security-bundle": "^6.0",
                "symfony/security-core": "^6.0",
                "symfony/security-csrf": "^6.0",
                "symfony/security-http": "^6.0",
                "symfony/stopwatch": "^6.0",
                "symfony/string": "^6.0",
                "symfony/translation": "^6.0",
                "symfony/twig-bridge": "^6.0",
                "symfony/var-exporter": "^6.0",
                "symfony/web-link": "^6.0",
                "symfony/yaml": "^6.0"
            },
            "require-dev": {
                "phpstan/phpstan": "^1.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Ivoz\\Core\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "GPL-3.0-or-later"
            ],
            "authors": [
                {
                    "name": "Carlos Cruz",
                    "email": "carlos@irontec.com"
                },
                {
                    "name": "Ivan Alonso",
                    "email": "kaian@irontec.com"
                },
                {
                    "name": "Mikel Madariaga",
                    "email": "mikel@irontec.com"
                }
            ],
            "description": "Core library for ivozprovider",
            "support": {
                "issues": "https://github.com/irontec/ivoz-core/issues",
                "source": "https://github.com/irontec/ivoz-core/tree/4.18.0"
            },
            "time": "2023-11-30T20:11:45+00:00"
        },
        {
            "name": "laminas/laminas-code",
            "version": "4.7.1",
            "source": {
                "type": "git",
                "url": "https://github.com/laminas/laminas-code.git",
                "reference": "91aabc066d5620428120800c0eafc0411e441a62"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/laminas/laminas-code/zipball/91aabc066d5620428120800c0eafc0411e441a62",
                "reference": "91aabc066d5620428120800c0eafc0411e441a62",
                "shasum": ""
            },
            "require": {
                "php": ">=7.4, <8.2"
            },
            "require-dev": {
                "doctrine/annotations": "^1.13.2",
                "ext-phar": "*",
                "laminas/laminas-coding-standard": "^2.3.0",
                "laminas/laminas-stdlib": "^3.6.1",
                "phpunit/phpunit": "^9.5.10",
                "psalm/plugin-phpunit": "^0.17.0",
                "vimeo/psalm": "^4.13.1"
            },
            "suggest": {
                "doctrine/annotations": "Doctrine\\Common\\Annotations >=1.0 for annotation features",
                "laminas/laminas-stdlib": "Laminas\\Stdlib component"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "polyfill/ReflectionEnumPolyfill.php"
                ],
                "psr-4": {
                    "Laminas\\Code\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "description": "Extensions to the PHP Reflection API, static code scanning, and code generation",
            "homepage": "https://laminas.dev",
            "keywords": [
                "code",
                "laminas",
                "laminasframework"
            ],
            "support": {
                "chat": "https://laminas.dev/chat",
                "docs": "https://docs.laminas.dev/laminas-code/",
                "forum": "https://discourse.laminas.dev",
                "issues": "https://github.com/laminas/laminas-code/issues",
                "rss": "https://github.com/laminas/laminas-code/releases.atom",
                "source": "https://github.com/laminas/laminas-code"
            },
            "funding": [
                {
                    "url": "https://funding.communitybridge.org/projects/laminas-project",
                    "type": "community_bridge"
                }
            ],
            "time": "2022-11-21T01:32:31+00:00"
        },
        {
            "name": "lcobucci/clock",
            "version": "2.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/lcobucci/clock.git",
                "reference": "fb533e093fd61321bfcbac08b131ce805fe183d3"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/lcobucci/clock/zipball/fb533e093fd61321bfcbac08b131ce805fe183d3",
                "reference": "fb533e093fd61321bfcbac08b131ce805fe183d3",
                "shasum": ""
            },
            "require": {
                "php": "^8.0",
                "stella-maris/clock": "^0.1.4"
            },
            "require-dev": {
                "infection/infection": "^0.26",
                "lcobucci/coding-standard": "^8.0",
                "phpstan/extension-installer": "^1.1",
                "phpstan/phpstan": "^0.12",
                "phpstan/phpstan-deprecation-rules": "^0.12",
                "phpstan/phpstan-phpunit": "^0.12",
                "phpstan/phpstan-strict-rules": "^0.12",
                "phpunit/phpunit": "^9.5"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Lcobucci\\Clock\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Luís Cobucci",
                    "email": "lcobucci@gmail.com"
                }
            ],
            "description": "Yet another clock abstraction",
            "support": {
                "issues": "https://github.com/lcobucci/clock/issues",
                "source": "https://github.com/lcobucci/clock/tree/2.2.0"
            },
            "funding": [
                {
                    "url": "https://github.com/lcobucci",
                    "type": "github"
                },
                {
                    "url": "https://www.patreon.com/lcobucci",
                    "type": "patreon"
                }
            ],
            "time": "2022-04-19T19:34:17+00:00"
        },
        {
            "name": "lcobucci/jwt",
            "version": "4.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/lcobucci/jwt.git",
                "reference": "4d7de2fe0d51a96418c0d04004986e410e87f6b4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/lcobucci/jwt/zipball/4d7de2fe0d51a96418c0d04004986e410e87f6b4",
                "reference": "4d7de2fe0d51a96418c0d04004986e410e87f6b4",
                "shasum": ""
            },
            "require": {
                "ext-hash": "*",
                "ext-json": "*",
                "ext-mbstring": "*",
                "ext-openssl": "*",
                "ext-sodium": "*",
                "lcobucci/clock": "^2.0 || ^3.0",
                "php": "^7.4 || ^8.0"
            },
            "require-dev": {
                "infection/infection": "^0.21",
                "lcobucci/coding-standard": "^6.0",
                "mikey179/vfsstream": "^1.6.7",
                "phpbench/phpbench": "^1.2",
                "phpstan/extension-installer": "^1.0",
                "phpstan/phpstan": "^1.4",
                "phpstan/phpstan-deprecation-rules": "^1.0",
                "phpstan/phpstan-phpunit": "^1.0",
                "phpstan/phpstan-strict-rules": "^1.0",
                "phpunit/php-invoker": "^3.1",
                "phpunit/phpunit": "^9.5"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Lcobucci\\JWT\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Luís Cobucci",
                    "email": "lcobucci@gmail.com",
                    "role": "Developer"
                }
            ],
            "description": "A simple library to work with JSON Web Token and JSON Web Signature",
            "keywords": [
                "JWS",
                "jwt"
            ],
            "support": {
                "issues": "https://github.com/lcobucci/jwt/issues",
                "source": "https://github.com/lcobucci/jwt/tree/4.3.0"
            },
            "funding": [
                {
                    "url": "https://github.com/lcobucci",
                    "type": "github"
                },
                {
                    "url": "https://www.patreon.com/lcobucci",
                    "type": "patreon"
                }
            ],
            "time": "2023-01-02T13:28:00+00:00"
        },
        {
            "name": "lexik/jwt-authentication-bundle",
            "version": "v2.19.1",
            "source": {
                "type": "git",
                "url": "https://github.com/lexik/LexikJWTAuthenticationBundle.git",
                "reference": "2db3658bcb7902b63f09f23ebbefa77a94d3f55d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/lexik/LexikJWTAuthenticationBundle/zipball/2db3658bcb7902b63f09f23ebbefa77a94d3f55d",
                "reference": "2db3658bcb7902b63f09f23ebbefa77a94d3f55d",
                "shasum": ""
            },
            "require": {
                "ext-openssl": "*",
                "lcobucci/clock": "^1.2|^2.0|^3.0",
                "lcobucci/jwt": "^3.4|^4.1|^5.0",
                "namshi/jose": "^7.2",
                "php": ">=7.1",
                "symfony/config": "^4.4|^5.3|^6.0",
                "symfony/dependency-injection": "^4.4|^5.3|^6.0",
                "symfony/deprecation-contracts": "^2.4|^3.0",
                "symfony/event-dispatcher": "^4.4|^5.3|^6.0",
                "symfony/http-foundation": "^4.4|^5.3|^6.0",
                "symfony/http-kernel": "^4.4|^5.3|^6.0",
                "symfony/property-access": "^4.4|^5.3|^6.0",
                "symfony/security-bundle": "^4.4|^5.3|^6.0",
                "symfony/translation-contracts": "^1.0|^2.0|^3.0"
            },
            "conflict": {
                "symfony/console": "<4.4"
            },
            "require-dev": {
                "symfony/browser-kit": "^5.4|^6.0",
                "symfony/console": "^4.4|^5.3|^6.0",
                "symfony/dom-crawler": "^5.4|^6.0",
                "symfony/filesystem": "^4.4|^5.3|^6.0",
                "symfony/framework-bundle": "^4.4|^5.3|^6.0",
                "symfony/phpunit-bridge": "^4.4|^5.3|^6.0",
                "symfony/security-guard": "^4.4|^5.3",
                "symfony/var-dumper": "^4.4|^5.3|^6.0",
                "symfony/yaml": "^4.4|^5.3|^6.0"
            },
            "suggest": {
                "gesdinet/jwt-refresh-token-bundle": "Implements a refresh token system over Json Web Tokens in Symfony",
                "spomky-labs/lexik-jose-bridge": "Provides a JWT Token encoder with encryption support"
            },
            "type": "symfony-bundle",
            "autoload": {
                "psr-4": {
                    "Lexik\\Bundle\\JWTAuthenticationBundle\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jeremy Barthe",
                    "email": "j.barthe@lexik.fr",
                    "homepage": "https://github.com/jeremyb"
                },
                {
                    "name": "Nicolas Cabot",
                    "email": "n.cabot@lexik.fr",
                    "homepage": "https://github.com/slashfan"
                },
                {
                    "name": "Cedric Girard",
                    "email": "c.girard@lexik.fr",
                    "homepage": "https://github.com/cedric-g"
                },
                {
                    "name": "Dev Lexik",
                    "email": "dev@lexik.fr",
                    "homepage": "https://github.com/lexik"
                },
                {
                    "name": "Robin Chalas",
                    "email": "robin.chalas@gmail.com",
                    "homepage": "https://github.com/chalasr"
                },
                {
                    "name": "Lexik Community",
                    "homepage": "https://github.com/lexik/LexikJWTAuthenticationBundle/graphs/contributors"
                }
            ],
            "description": "This bundle provides JWT authentication for your Symfony REST API",
            "homepage": "https://github.com/lexik/LexikJWTAuthenticationBundle",
            "keywords": [
                "Authentication",
                "JWS",
                "api",
                "bundle",
                "jwt",
                "rest",
                "symfony"
            ],
            "support": {
                "issues": "https://github.com/lexik/LexikJWTAuthenticationBundle/issues",
                "source": "https://github.com/lexik/LexikJWTAuthenticationBundle/tree/v2.19.1"
            },
            "funding": [
                {
                    "url": "https://github.com/chalasr",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/lexik/jwt-authentication-bundle",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-04T01:04:21+00:00"
        },
        {
            "name": "namshi/jose",
            "version": "7.2.3",
            "source": {
                "type": "git",
                "url": "https://github.com/namshi/jose.git",
                "reference": "89a24d7eb3040e285dd5925fcad992378b82bcff"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/namshi/jose/zipball/89a24d7eb3040e285dd5925fcad992378b82bcff",
                "reference": "89a24d7eb3040e285dd5925fcad992378b82bcff",
                "shasum": ""
            },
            "require": {
                "ext-date": "*",
                "ext-hash": "*",
                "ext-json": "*",
                "ext-pcre": "*",
                "ext-spl": "*",
                "php": ">=5.5",
                "symfony/polyfill-php56": "^1.0"
            },
            "require-dev": {
                "phpseclib/phpseclib": "^2.0",
                "phpunit/phpunit": "^4.5|^5.0",
                "satooshi/php-coveralls": "^1.0"
            },
            "suggest": {
                "ext-openssl": "Allows to use OpenSSL as crypto engine.",
                "phpseclib/phpseclib": "Allows to use Phpseclib as crypto engine, use version ^2.0."
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Namshi\\JOSE\\": "src/Namshi/JOSE/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Alessandro Nadalin",
                    "email": "alessandro.nadalin@gmail.com"
                },
                {
                    "name": "Alessandro Cinelli (cirpo)",
                    "email": "alessandro.cinelli@gmail.com"
                }
            ],
            "description": "JSON Object Signing and Encryption library for PHP.",
            "keywords": [
                "JSON Web Signature",
                "JSON Web Token",
                "JWS",
                "json",
                "jwt",
                "token"
            ],
            "support": {
                "issues": "https://github.com/namshi/jose/issues",
                "source": "https://github.com/namshi/jose/tree/master"
            },
            "time": "2016-12-05T07:27:31+00:00"
        },
        {
            "name": "psr/cache",
            "version": "2.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/cache.git",
                "reference": "213f9dbc5b9bfbc4f8db86d2838dc968752ce13b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/cache/zipball/213f9dbc5b9bfbc4f8db86d2838dc968752ce13b",
                "reference": "213f9dbc5b9bfbc4f8db86d2838dc968752ce13b",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Cache\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common interface for caching libraries",
            "keywords": [
                "cache",
                "psr",
                "psr-6"
            ],
            "support": {
                "source": "https://github.com/php-fig/cache/tree/2.0.0"
            },
            "time": "2021-02-03T23:23:37+00:00"
        },
        {
            "name": "psr/clock",
            "version": "1.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/clock.git",
                "reference": "e41a24703d4560fd0acb709162f73b8adfc3aa0d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/clock/zipball/e41a24703d4560fd0acb709162f73b8adfc3aa0d",
                "reference": "e41a24703d4560fd0acb709162f73b8adfc3aa0d",
                "shasum": ""
            },
            "require": {
                "php": "^7.0 || ^8.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Psr\\Clock\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common interface for reading the clock.",
            "homepage": "https://github.com/php-fig/clock",
            "keywords": [
                "clock",
                "now",
                "psr",
                "psr-20",
                "time"
            ],
            "support": {
                "issues": "https://github.com/php-fig/clock/issues",
                "source": "https://github.com/php-fig/clock/tree/1.0.0"
            },
            "time": "2022-11-25T14:36:26+00:00"
        },
        {
            "name": "psr/container",
            "version": "1.1.2",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/container.git",
                "reference": "513e0666f7216c7459170d56df27dfcefe1689ea"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea",
                "reference": "513e0666f7216c7459170d56df27dfcefe1689ea",
                "shasum": ""
            },
            "require": {
                "php": ">=7.4.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Psr\\Container\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common Container Interface (PHP FIG PSR-11)",
            "homepage": "https://github.com/php-fig/container",
            "keywords": [
                "PSR-11",
                "container",
                "container-interface",
                "container-interop",
                "psr"
            ],
            "support": {
                "issues": "https://github.com/php-fig/container/issues",
                "source": "https://github.com/php-fig/container/tree/1.1.2"
            },
            "time": "2021-11-05T16:50:12+00:00"
        },
        {
            "name": "psr/event-dispatcher",
            "version": "1.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/event-dispatcher.git",
                "reference": "dbefd12671e8a14ec7f180cab83036ed26714bb0"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0",
                "reference": "dbefd12671e8a14ec7f180cab83036ed26714bb0",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\EventDispatcher\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Standard interfaces for event handling.",
            "keywords": [
                "events",
                "psr",
                "psr-14"
            ],
            "support": {
                "issues": "https://github.com/php-fig/event-dispatcher/issues",
                "source": "https://github.com/php-fig/event-dispatcher/tree/1.0.0"
            },
            "time": "2019-01-08T18:20:26+00:00"
        },
        {
            "name": "psr/http-message",
            "version": "1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/http-message.git",
                "reference": "cb6ce4845ce34a8ad9e68117c10ee90a29919eba"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/http-message/zipball/cb6ce4845ce34a8ad9e68117c10ee90a29919eba",
                "reference": "cb6ce4845ce34a8ad9e68117c10ee90a29919eba",
                "shasum": ""
            },
            "require": {
                "php": "^7.2 || ^8.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Http\\Message\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for HTTP messages",
            "homepage": "https://github.com/php-fig/http-message",
            "keywords": [
                "http",
                "http-message",
                "psr",
                "psr-7",
                "request",
                "response"
            ],
            "support": {
                "source": "https://github.com/php-fig/http-message/tree/1.1"
            },
            "time": "2023-04-04T09:50:52+00:00"
        },
        {
            "name": "psr/link",
            "version": "1.1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/link.git",
                "reference": "846c25f58a1f02b93a00f2404e3626b6bf9b7807"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/link/zipball/846c25f58a1f02b93a00f2404e3626b6bf9b7807",
                "reference": "846c25f58a1f02b93a00f2404e3626b6bf9b7807",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Link\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interfaces for HTTP links",
            "homepage": "https://github.com/php-fig/link",
            "keywords": [
                "http",
                "http-link",
                "link",
                "psr",
                "psr-13",
                "rest"
            ],
            "support": {
                "source": "https://github.com/php-fig/link/tree/1.1.1"
            },
            "time": "2021-03-11T22:59:13+00:00"
        },
        {
            "name": "psr/log",
            "version": "2.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/log.git",
                "reference": "ef29f6d262798707a9edd554e2b82517ef3a9376"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/log/zipball/ef29f6d262798707a9edd554e2b82517ef3a9376",
                "reference": "ef29f6d262798707a9edd554e2b82517ef3a9376",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Log\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Common interface for logging libraries",
            "homepage": "https://github.com/php-fig/log",
            "keywords": [
                "log",
                "psr",
                "psr-3"
            ],
            "support": {
                "source": "https://github.com/php-fig/log/tree/2.0.0"
            },
            "time": "2021-07-14T16:41:46+00:00"
        },
        {
            "name": "ralouphie/getallheaders",
            "version": "3.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/ralouphie/getallheaders.git",
                "reference": "120b605dfeb996808c31b6477290a714d356e822"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822",
                "reference": "120b605dfeb996808c31b6477290a714d356e822",
                "shasum": ""
            },
            "require": {
                "php": ">=5.6"
            },
            "require-dev": {
                "php-coveralls/php-coveralls": "^2.1",
                "phpunit/phpunit": "^5 || ^6.5"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/getallheaders.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Ralph Khattar",
                    "email": "ralph.khattar@gmail.com"
                }
            ],
            "description": "A polyfill for getallheaders.",
            "support": {
                "issues": "https://github.com/ralouphie/getallheaders/issues",
                "source": "https://github.com/ralouphie/getallheaders/tree/develop"
            },
            "time": "2019-03-08T08:55:37+00:00"
        },
        {
            "name": "ramsey/collection",
            "version": "1.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/ramsey/collection.git",
                "reference": "ad7475d1c9e70b190ecffc58f2d989416af339b4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ramsey/collection/zipball/ad7475d1c9e70b190ecffc58f2d989416af339b4",
                "reference": "ad7475d1c9e70b190ecffc58f2d989416af339b4",
                "shasum": ""
            },
            "require": {
                "php": "^7.4 || ^8.0",
                "symfony/polyfill-php81": "^1.23"
            },
            "require-dev": {
                "captainhook/plugin-composer": "^5.3",
                "ergebnis/composer-normalize": "^2.28.3",
                "fakerphp/faker": "^1.21",
                "hamcrest/hamcrest-php": "^2.0",
                "jangregor/phpstan-prophecy": "^1.0",
                "mockery/mockery": "^1.5",
                "php-parallel-lint/php-console-highlighter": "^1.0",
                "php-parallel-lint/php-parallel-lint": "^1.3",
                "phpcsstandards/phpcsutils": "^1.0.0-rc1",
                "phpspec/prophecy-phpunit": "^2.0",
                "phpstan/extension-installer": "^1.2",
                "phpstan/phpstan": "^1.9",
                "phpstan/phpstan-mockery": "^1.1",
                "phpstan/phpstan-phpunit": "^1.3",
                "phpunit/phpunit": "^9.5",
                "psalm/plugin-mockery": "^1.1",
                "psalm/plugin-phpunit": "^0.18.4",
                "ramsey/coding-standard": "^2.0.3",
                "ramsey/conventional-commits": "^1.3",
                "vimeo/psalm": "^5.4"
            },
            "type": "library",
            "extra": {
                "captainhook": {
                    "force-install": true
                },
                "ramsey/conventional-commits": {
                    "configFile": "conventional-commits.json"
                }
            },
            "autoload": {
                "psr-4": {
                    "Ramsey\\Collection\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Ben Ramsey",
                    "email": "ben@benramsey.com",
                    "homepage": "https://benramsey.com"
                }
            ],
            "description": "A PHP library for representing and manipulating collections.",
            "keywords": [
                "array",
                "collection",
                "hash",
                "map",
                "queue",
                "set"
            ],
            "support": {
                "issues": "https://github.com/ramsey/collection/issues",
                "source": "https://github.com/ramsey/collection/tree/1.3.0"
            },
            "funding": [
                {
                    "url": "https://github.com/ramsey",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/ramsey/collection",
                    "type": "tidelift"
                }
            ],
            "time": "2022-12-27T19:12:24+00:00"
        },
        {
            "name": "ramsey/uuid",
            "version": "4.7.5",
            "source": {
                "type": "git",
                "url": "https://github.com/ramsey/uuid.git",
                "reference": "5f0df49ae5ad6efb7afa69e6bfab4e5b1e080d8e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ramsey/uuid/zipball/5f0df49ae5ad6efb7afa69e6bfab4e5b1e080d8e",
                "reference": "5f0df49ae5ad6efb7afa69e6bfab4e5b1e080d8e",
                "shasum": ""
            },
            "require": {
                "brick/math": "^0.8.8 || ^0.9 || ^0.10 || ^0.11",
                "ext-json": "*",
                "php": "^8.0",
                "ramsey/collection": "^1.2 || ^2.0"
            },
            "replace": {
                "rhumsaa/uuid": "self.version"
            },
            "require-dev": {
                "captainhook/captainhook": "^5.10",
                "captainhook/plugin-composer": "^5.3",
                "dealerdirect/phpcodesniffer-composer-installer": "^0.7.0",
                "doctrine/annotations": "^1.8",
                "ergebnis/composer-normalize": "^2.15",
                "mockery/mockery": "^1.3",
                "paragonie/random-lib": "^2",
                "php-mock/php-mock": "^2.2",
                "php-mock/php-mock-mockery": "^1.3",
                "php-parallel-lint/php-parallel-lint": "^1.1",
                "phpbench/phpbench": "^1.0",
                "phpstan/extension-installer": "^1.1",
                "phpstan/phpstan": "^1.8",
                "phpstan/phpstan-mockery": "^1.1",
                "phpstan/phpstan-phpunit": "^1.1",
                "phpunit/phpunit": "^8.5 || ^9",
                "ramsey/composer-repl": "^1.4",
                "slevomat/coding-standard": "^8.4",
                "squizlabs/php_codesniffer": "^3.5",
                "vimeo/psalm": "^4.9"
            },
            "suggest": {
                "ext-bcmath": "Enables faster math with arbitrary-precision integers using BCMath.",
                "ext-gmp": "Enables faster math with arbitrary-precision integers using GMP.",
                "ext-uuid": "Enables the use of PeclUuidTimeGenerator and PeclUuidRandomGenerator.",
                "paragonie/random-lib": "Provides RandomLib for use with the RandomLibAdapter",
                "ramsey/uuid-doctrine": "Allows the use of Ramsey\\Uuid\\Uuid as Doctrine field type."
            },
            "type": "library",
            "extra": {
                "captainhook": {
                    "force-install": true
                }
            },
            "autoload": {
                "files": [
                    "src/functions.php"
                ],
                "psr-4": {
                    "Ramsey\\Uuid\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "A PHP library for generating and working with universally unique identifiers (UUIDs).",
            "keywords": [
                "guid",
                "identifier",
                "uuid"
            ],
            "support": {
                "issues": "https://github.com/ramsey/uuid/issues",
                "source": "https://github.com/ramsey/uuid/tree/4.7.5"
            },
            "funding": [
                {
                    "url": "https://github.com/ramsey",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/ramsey/uuid",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-08T05:53:05+00:00"
        },
        {
            "name": "stella-maris/clock",
            "version": "0.1.7",
            "source": {
                "type": "git",
                "url": "https://github.com/stella-maris-solutions/clock.git",
                "reference": "fa23ce16019289a18bb3446fdecd45befcdd94f8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/stella-maris-solutions/clock/zipball/fa23ce16019289a18bb3446fdecd45befcdd94f8",
                "reference": "fa23ce16019289a18bb3446fdecd45befcdd94f8",
                "shasum": ""
            },
            "require": {
                "php": "^7.0|^8.0",
                "psr/clock": "^1.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "StellaMaris\\Clock\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Andreas Heigl",
                    "role": "Maintainer"
                }
            ],
            "description": "A pre-release of the proposed PSR-20 Clock-Interface",
            "homepage": "https://gitlab.com/stella-maris/clock",
            "keywords": [
                "clock",
                "datetime",
                "point in time",
                "psr20"
            ],
            "support": {
                "source": "https://github.com/stella-maris-solutions/clock/tree/0.1.7"
            },
            "time": "2022-11-25T16:15:06+00:00"
        },
        {
            "name": "symfony/cache",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/cache.git",
                "reference": "b17f28169f7a2f2c0cddf2b044d729f5b75efe5a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/cache/zipball/b17f28169f7a2f2c0cddf2b044d729f5b75efe5a",
                "reference": "b17f28169f7a2f2c0cddf2b044d729f5b75efe5a",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/cache": "^1.0|^2.0",
                "psr/log": "^1.1|^2|^3",
                "symfony/cache-contracts": "^1.1.7|^2",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php73": "^1.9",
                "symfony/polyfill-php80": "^1.16",
                "symfony/service-contracts": "^1.1|^2|^3",
                "symfony/var-exporter": "^4.4|^5.0|^6.0"
            },
            "conflict": {
                "doctrine/dbal": "<2.13.1",
                "symfony/dependency-injection": "<4.4",
                "symfony/http-kernel": "<4.4",
                "symfony/var-dumper": "<4.4"
            },
            "provide": {
                "psr/cache-implementation": "1.0|2.0",
                "psr/simple-cache-implementation": "1.0|2.0",
                "symfony/cache-implementation": "1.0|2.0"
            },
            "require-dev": {
                "cache/integration-tests": "dev-master",
                "doctrine/cache": "^1.6|^2.0",
                "doctrine/dbal": "^2.13.1|^3|^4",
                "predis/predis": "^1.1",
                "psr/simple-cache": "^1.0|^2.0",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/filesystem": "^4.4|^5.0|^6.0",
                "symfony/http-kernel": "^4.4|^5.0|^6.0",
                "symfony/messenger": "^4.4|^5.0|^6.0",
                "symfony/var-dumper": "^4.4|^5.0|^6.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Cache\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides extended PSR-6, PSR-16 (and tags) implementations",
            "homepage": "https://symfony.com",
            "keywords": [
                "caching",
                "psr6"
            ],
            "support": {
                "source": "https://github.com/symfony/cache/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-18T14:56:06+00:00"
        },
        {
            "name": "symfony/cache-contracts",
            "version": "v2.5.2",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/cache-contracts.git",
                "reference": "64be4a7acb83b6f2bf6de9a02cee6dad41277ebc"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/cache-contracts/zipball/64be4a7acb83b6f2bf6de9a02cee6dad41277ebc",
                "reference": "64be4a7acb83b6f2bf6de9a02cee6dad41277ebc",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/cache": "^1.0|^2.0|^3.0"
            },
            "suggest": {
                "symfony/cache-implementation": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "2.5-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Contracts\\Cache\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Generic abstractions related to caching",
            "homepage": "https://symfony.com",
            "keywords": [
                "abstractions",
                "contracts",
                "decoupling",
                "interfaces",
                "interoperability",
                "standards"
            ],
            "support": {
                "source": "https://github.com/symfony/cache-contracts/tree/v2.5.2"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-01-02T09:53:40+00:00"
        },
        {
            "name": "symfony/config",
            "version": "v5.4.31",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/config.git",
                "reference": "dd5ea39de228813aba0c23c3a4153da2a4cf3cd9"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/config/zipball/dd5ea39de228813aba0c23c3a4153da2a4cf3cd9",
                "reference": "dd5ea39de228813aba0c23c3a4153da2a4cf3cd9",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/filesystem": "^4.4|^5.0|^6.0",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-php80": "^1.16",
                "symfony/polyfill-php81": "^1.22"
            },
            "conflict": {
                "symfony/finder": "<4.4"
            },
            "require-dev": {
                "symfony/event-dispatcher": "^4.4|^5.0|^6.0",
                "symfony/finder": "^4.4|^5.0|^6.0",
                "symfony/messenger": "^4.4|^5.0|^6.0",
                "symfony/service-contracts": "^1.1|^2|^3",
                "symfony/yaml": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "symfony/yaml": "To use the yaml reference dumper"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Config\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Helps you find, load, combine, autofill and validate configuration values of any kind",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/config/tree/v5.4.31"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-09T08:22:43+00:00"
        },
        {
            "name": "symfony/console",
            "version": "v6.0.19",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/console.git",
                "reference": "c3ebc83d031b71c39da318ca8b7a07ecc67507ed"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/console/zipball/c3ebc83d031b71c39da318ca8b7a07ecc67507ed",
                "reference": "c3ebc83d031b71c39da318ca8b7a07ecc67507ed",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.2",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/service-contracts": "^1.1|^2|^3",
                "symfony/string": "^5.4|^6.0"
            },
            "conflict": {
                "symfony/dependency-injection": "<5.4",
                "symfony/dotenv": "<5.4",
                "symfony/event-dispatcher": "<5.4",
                "symfony/lock": "<5.4",
                "symfony/process": "<5.4"
            },
            "provide": {
                "psr/log-implementation": "1.0|2.0|3.0"
            },
            "require-dev": {
                "psr/log": "^1|^2|^3",
                "symfony/config": "^5.4|^6.0",
                "symfony/dependency-injection": "^5.4|^6.0",
                "symfony/event-dispatcher": "^5.4|^6.0",
                "symfony/lock": "^5.4|^6.0",
                "symfony/process": "^5.4|^6.0",
                "symfony/var-dumper": "^5.4|^6.0"
            },
            "suggest": {
                "psr/log": "For using the console logger",
                "symfony/event-dispatcher": "",
                "symfony/lock": "",
                "symfony/process": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Console\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Eases the creation of beautiful and testable command line interfaces",
            "homepage": "https://symfony.com",
            "keywords": [
                "cli",
                "command line",
                "console",
                "terminal"
            ],
            "support": {
                "source": "https://github.com/symfony/console/tree/v6.0.19"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-01T08:36:10+00:00"
        },
        {
            "name": "symfony/dependency-injection",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/dependency-injection.git",
                "reference": "75d568165a65fa7d8124869ec7c3a90424352e6c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/dependency-injection/zipball/75d568165a65fa7d8124869ec7c3a90424352e6c",
                "reference": "75d568165a65fa7d8124869ec7c3a90424352e6c",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/container": "^1.1.1",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16",
                "symfony/polyfill-php81": "^1.22",
                "symfony/service-contracts": "^1.1.6|^2"
            },
            "conflict": {
                "ext-psr": "<1.1|>=2",
                "symfony/config": "<5.3",
                "symfony/finder": "<4.4",
                "symfony/proxy-manager-bridge": "<4.4",
                "symfony/yaml": "<4.4.26"
            },
            "provide": {
                "psr/container-implementation": "1.0",
                "symfony/service-implementation": "1.0|2.0"
            },
            "require-dev": {
                "symfony/config": "^5.3|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/yaml": "^4.4.26|^5.0|^6.0"
            },
            "suggest": {
                "symfony/config": "",
                "symfony/expression-language": "For using expressions in service container configuration",
                "symfony/finder": "For using double-star glob patterns or when GLOB_BRACE portability is required",
                "symfony/proxy-manager-bridge": "Generate service proxies to lazy load them",
                "symfony/yaml": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\DependencyInjection\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Allows you to standardize and centralize the way objects are constructed in your application",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/dependency-injection/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-28T09:31:38+00:00"
        },
        {
            "name": "symfony/deprecation-contracts",
            "version": "v2.5.2",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/deprecation-contracts.git",
                "reference": "e8b495ea28c1d97b5e0c121748d6f9b53d075c66"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/deprecation-contracts/zipball/e8b495ea28c1d97b5e0c121748d6f9b53d075c66",
                "reference": "e8b495ea28c1d97b5e0c121748d6f9b53d075c66",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "2.5-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "files": [
                    "function.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "A generic function and convention to trigger deprecation notices",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/deprecation-contracts/tree/v2.5.2"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-01-02T09:53:40+00:00"
        },
        {
            "name": "symfony/doctrine-bridge",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/doctrine-bridge.git",
                "reference": "0c5e5ad8b8249a0a86f415e16695180c3b61be76"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/doctrine-bridge/zipball/0c5e5ad8b8249a0a86f415e16695180c3b61be76",
                "reference": "0c5e5ad8b8249a0a86f415e16695180c3b61be76",
                "shasum": ""
            },
            "require": {
                "doctrine/event-manager": "~1.0",
                "doctrine/persistence": "^2|^3",
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/service-contracts": "^1.1|^2|^3"
            },
            "conflict": {
                "doctrine/dbal": "<2.13.1",
                "doctrine/lexer": "<1.1",
                "doctrine/orm": "<2.7.4",
                "symfony/cache": "<5.4",
                "symfony/dependency-injection": "<4.4",
                "symfony/form": "<5.4.21|>=6,<6.2.7",
                "symfony/http-kernel": "<5",
                "symfony/messenger": "<4.4",
                "symfony/property-info": "<5",
                "symfony/proxy-manager-bridge": "<4.4.19",
                "symfony/security-bundle": "<5",
                "symfony/security-core": "<5.3",
                "symfony/validator": "<5.4.25|>=6,<6.2.12|>=6.3,<6.3.1"
            },
            "require-dev": {
                "doctrine/annotations": "^1.10.4|^2",
                "doctrine/collections": "^1.0|^2.0",
                "doctrine/data-fixtures": "^1.1",
                "doctrine/dbal": "^2.13.1|^3|^4",
                "doctrine/orm": "^2.7.4|^3",
                "psr/log": "^1|^2|^3",
                "symfony/cache": "^5.4|^6.0",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/doctrine-messenger": "^5.1|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/form": "^5.4.21|^6.2.7",
                "symfony/http-kernel": "^5.0|^6.0",
                "symfony/messenger": "^4.4|^5.0|^6.0",
                "symfony/property-access": "^4.4|^5.0|^6.0",
                "symfony/property-info": "^5.0|^6.0",
                "symfony/proxy-manager-bridge": "^4.4|^5.0|^6.0",
                "symfony/security-core": "^5.3|^6.0",
                "symfony/stopwatch": "^4.4|^5.0|^6.0",
                "symfony/translation": "^4.4|^5.0|^6.0",
                "symfony/uid": "^5.1|^6.0",
                "symfony/validator": "^5.4.25|~6.2.12|^6.3.1",
                "symfony/var-dumper": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "doctrine/data-fixtures": "",
                "doctrine/dbal": "",
                "doctrine/orm": "",
                "symfony/form": "",
                "symfony/property-info": "",
                "symfony/validator": ""
            },
            "type": "symfony-bridge",
            "autoload": {
                "psr-4": {
                    "Symfony\\Bridge\\Doctrine\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides integration for Doctrine with various Symfony components",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/doctrine-bridge/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-14T14:38:10+00:00"
        },
        {
            "name": "symfony/error-handler",
            "version": "v5.4.29",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/error-handler.git",
                "reference": "328c6fcfd2f90b64c16efaf0ea67a311d672f078"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/error-handler/zipball/328c6fcfd2f90b64c16efaf0ea67a311d672f078",
                "reference": "328c6fcfd2f90b64c16efaf0ea67a311d672f078",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/log": "^1|^2|^3",
                "symfony/var-dumper": "^4.4|^5.0|^6.0"
            },
            "require-dev": {
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/http-kernel": "^4.4|^5.0|^6.0",
                "symfony/serializer": "^4.4|^5.0|^6.0"
            },
            "bin": [
                "Resources/bin/patch-type-declarations"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\ErrorHandler\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides tools to manage errors and ease debugging PHP code",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/error-handler/tree/v5.4.29"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-09-06T21:54:06+00:00"
        },
        {
            "name": "symfony/event-dispatcher",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/event-dispatcher.git",
                "reference": "e3bca343efeb613f843c254e7718ef17c9bdf7a3"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/event-dispatcher/zipball/e3bca343efeb613f843c254e7718ef17c9bdf7a3",
                "reference": "e3bca343efeb613f843c254e7718ef17c9bdf7a3",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/event-dispatcher-contracts": "^2|^3",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "symfony/dependency-injection": "<4.4"
            },
            "provide": {
                "psr/event-dispatcher-implementation": "1.0",
                "symfony/event-dispatcher-implementation": "2.0"
            },
            "require-dev": {
                "psr/log": "^1|^2|^3",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/error-handler": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/http-foundation": "^4.4|^5.0|^6.0",
                "symfony/service-contracts": "^1.1|^2|^3",
                "symfony/stopwatch": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "symfony/dependency-injection": "",
                "symfony/http-kernel": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\EventDispatcher\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides tools that allow your application components to communicate with each other by dispatching events and listening to them",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/event-dispatcher/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-27T21:12:56+00:00"
        },
        {
            "name": "symfony/event-dispatcher-contracts",
            "version": "v3.0.2",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/event-dispatcher-contracts.git",
                "reference": "7bc61cc2db649b4637d331240c5346dcc7708051"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/7bc61cc2db649b4637d331240c5346dcc7708051",
                "reference": "7bc61cc2db649b4637d331240c5346dcc7708051",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.2",
                "psr/event-dispatcher": "^1"
            },
            "suggest": {
                "symfony/event-dispatcher-implementation": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "3.0-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Contracts\\EventDispatcher\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Generic abstractions related to dispatching event",
            "homepage": "https://symfony.com",
            "keywords": [
                "abstractions",
                "contracts",
                "decoupling",
                "interfaces",
                "interoperability",
                "standards"
            ],
            "support": {
                "source": "https://github.com/symfony/event-dispatcher-contracts/tree/v3.0.2"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-01-02T09:55:41+00:00"
        },
        {
            "name": "symfony/expression-language",
            "version": "v5.4.21",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/expression-language.git",
                "reference": "501589522b844b8eecf012c133f0404f0eef77ac"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/expression-language/zipball/501589522b844b8eecf012c133f0404f0eef77ac",
                "reference": "501589522b844b8eecf012c133f0404f0eef77ac",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/service-contracts": "^1.1|^2|^3"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\ExpressionLanguage\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides an engine that can compile and evaluate expressions",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/expression-language/tree/v5.4.21"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-02-14T08:03:56+00:00"
        },
        {
            "name": "symfony/filesystem",
            "version": "v5.4.25",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/filesystem.git",
                "reference": "0ce3a62c9579a53358d3a7eb6b3dfb79789a6364"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/filesystem/zipball/0ce3a62c9579a53358d3a7eb6b3dfb79789a6364",
                "reference": "0ce3a62c9579a53358d3a7eb6b3dfb79789a6364",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-mbstring": "~1.8",
                "symfony/polyfill-php80": "^1.16"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Filesystem\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides basic utilities for the filesystem",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/filesystem/tree/v5.4.25"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-05-31T13:04:02+00:00"
        },
        {
            "name": "symfony/finder",
            "version": "v5.4.27",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/finder.git",
                "reference": "ff4bce3c33451e7ec778070e45bd23f74214cd5d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/finder/zipball/ff4bce3c33451e7ec778070e45bd23f74214cd5d",
                "reference": "ff4bce3c33451e7ec778070e45bd23f74214cd5d",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Finder\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Finds files and directories via an intuitive fluent interface",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/finder/tree/v5.4.27"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-31T08:02:31+00:00"
        },
        {
            "name": "symfony/framework-bundle",
            "version": "v5.3.15",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/framework-bundle.git",
                "reference": "fef224d1904da67120fdfe9de3d070f8ba607742"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/framework-bundle/zipball/fef224d1904da67120fdfe9de3d070f8ba607742",
                "reference": "fef224d1904da67120fdfe9de3d070f8ba607742",
                "shasum": ""
            },
            "require": {
                "ext-xml": "*",
                "php": ">=7.2.5",
                "symfony/cache": "^5.2",
                "symfony/config": "^5.3",
                "symfony/dependency-injection": "^5.3",
                "symfony/deprecation-contracts": "^2.1",
                "symfony/error-handler": "^4.4.1|^5.0.1",
                "symfony/event-dispatcher": "^5.1",
                "symfony/filesystem": "^4.4|^5.0",
                "symfony/finder": "^4.4|^5.0",
                "symfony/http-foundation": "^5.3",
                "symfony/http-kernel": "^5.3",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/routing": "^5.3"
            },
            "conflict": {
                "doctrine/persistence": "<1.3",
                "phpdocumentor/reflection-docblock": "<3.2.2",
                "phpdocumentor/type-resolver": "<1.4.0",
                "phpunit/phpunit": "<5.4.3",
                "symfony/asset": "<5.3",
                "symfony/browser-kit": "<4.4",
                "symfony/console": "<5.2.5",
                "symfony/dom-crawler": "<4.4",
                "symfony/dotenv": "<5.1",
                "symfony/form": "<5.2",
                "symfony/http-client": "<4.4",
                "symfony/lock": "<4.4",
                "symfony/mailer": "<5.2",
                "symfony/messenger": "<4.4",
                "symfony/mime": "<4.4",
                "symfony/property-access": "<5.3",
                "symfony/property-info": "<4.4",
                "symfony/security-core": "<5.3",
                "symfony/security-csrf": "<5.3",
                "symfony/serializer": "<5.2",
                "symfony/stopwatch": "<4.4",
                "symfony/translation": "<5.3",
                "symfony/twig-bridge": "<4.4",
                "symfony/twig-bundle": "<4.4",
                "symfony/validator": "<5.2",
                "symfony/web-profiler-bundle": "<4.4",
                "symfony/workflow": "<5.2"
            },
            "require-dev": {
                "doctrine/annotations": "^1.10.4",
                "doctrine/cache": "^1.0|^2.0",
                "doctrine/persistence": "^1.3|^2.0",
                "paragonie/sodium_compat": "^1.8",
                "phpdocumentor/reflection-docblock": "^3.0|^4.0|^5.0",
                "symfony/asset": "^5.3",
                "symfony/browser-kit": "^4.4|^5.0",
                "symfony/console": "^5.2",
                "symfony/css-selector": "^4.4|^5.0",
                "symfony/dom-crawler": "^4.4.30|^5.3.7",
                "symfony/dotenv": "^5.1",
                "symfony/expression-language": "^4.4|^5.0",
                "symfony/form": "^5.2",
                "symfony/http-client": "^4.4|^5.0",
                "symfony/lock": "^4.4|^5.0",
                "symfony/mailer": "^5.2",
                "symfony/messenger": "^5.2",
                "symfony/mime": "^4.4|^5.0",
                "symfony/notifier": "^5.3",
                "symfony/phpunit-bridge": "^5.3",
                "symfony/polyfill-intl-icu": "~1.0",
                "symfony/process": "^4.4|^5.0",
                "symfony/property-info": "^4.4|^5.0",
                "symfony/rate-limiter": "^5.2",
                "symfony/security-bundle": "^5.3",
                "symfony/serializer": "^5.2",
                "symfony/stopwatch": "^4.4|^5.0",
                "symfony/string": "^5.0",
                "symfony/translation": "^5.3",
                "symfony/twig-bundle": "^4.4|^5.0",
                "symfony/validator": "^5.2",
                "symfony/web-link": "^4.4|^5.0",
                "symfony/workflow": "^5.2",
                "symfony/yaml": "^4.4|^5.0",
                "twig/twig": "^2.10|^3.0"
            },
            "suggest": {
                "ext-apcu": "For best performance of the system caches",
                "symfony/console": "For using the console commands",
                "symfony/form": "For using forms",
                "symfony/property-info": "For using the property_info service",
                "symfony/serializer": "For using the serializer service",
                "symfony/validator": "For using validation",
                "symfony/web-link": "For using web links, features such as preloading, prefetching or prerendering",
                "symfony/yaml": "For using the debug:config and lint:yaml commands"
            },
            "type": "symfony-bundle",
            "autoload": {
                "psr-4": {
                    "Symfony\\Bundle\\FrameworkBundle\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides a tight integration between Symfony components and the Symfony full-stack framework",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/framework-bundle/tree/v5.3.15"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-01-28T17:48:02+00:00"
        },
        {
            "name": "symfony/http-foundation",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/http-foundation.git",
                "reference": "4da1713e88cf9c44bd4bf65f54772681222fcbec"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/http-foundation/zipball/4da1713e88cf9c44bd4bf65f54772681222fcbec",
                "reference": "4da1713e88cf9c44bd4bf65f54772681222fcbec",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-mbstring": "~1.1",
                "symfony/polyfill-php80": "^1.16"
            },
            "require-dev": {
                "predis/predis": "~1.0",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^5.4|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/http-kernel": "^5.4.12|^6.0.12|^6.1.4",
                "symfony/mime": "^4.4|^5.0|^6.0",
                "symfony/rate-limiter": "^5.2|^6.0"
            },
            "suggest": {
                "symfony/mime": "To use the file extension guesser"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\HttpFoundation\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Defines an object-oriented layer for the HTTP specification",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/http-foundation/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-27T11:45:35+00:00"
        },
        {
            "name": "symfony/http-kernel",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/http-kernel.git",
                "reference": "f2b00c66d1c7ef12f3fc625af2a0bc5d5857db7b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/http-kernel/zipball/f2b00c66d1c7ef12f3fc625af2a0bc5d5857db7b",
                "reference": "f2b00c66d1c7ef12f3fc625af2a0bc5d5857db7b",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/log": "^1|^2",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/error-handler": "^4.4|^5.0|^6.0",
                "symfony/event-dispatcher": "^5.0|^6.0",
                "symfony/http-foundation": "^5.4.21|^6.2.7",
                "symfony/polyfill-ctype": "^1.8",
                "symfony/polyfill-php73": "^1.9",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "symfony/browser-kit": "<5.4",
                "symfony/cache": "<5.0",
                "symfony/config": "<5.0",
                "symfony/console": "<4.4",
                "symfony/dependency-injection": "<5.3",
                "symfony/doctrine-bridge": "<5.0",
                "symfony/form": "<5.0",
                "symfony/http-client": "<5.0",
                "symfony/mailer": "<5.0",
                "symfony/messenger": "<5.0",
                "symfony/translation": "<5.0",
                "symfony/twig-bridge": "<5.0",
                "symfony/validator": "<5.0",
                "twig/twig": "<2.13"
            },
            "provide": {
                "psr/log-implementation": "1.0|2.0"
            },
            "require-dev": {
                "psr/cache": "^1.0|^2.0|^3.0",
                "symfony/browser-kit": "^5.4|^6.0",
                "symfony/config": "^5.0|^6.0",
                "symfony/console": "^4.4|^5.0|^6.0",
                "symfony/css-selector": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^5.3|^6.0",
                "symfony/dom-crawler": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/finder": "^4.4|^5.0|^6.0",
                "symfony/http-client-contracts": "^1.1|^2|^3",
                "symfony/process": "^4.4|^5.0|^6.0",
                "symfony/routing": "^4.4|^5.0|^6.0",
                "symfony/stopwatch": "^4.4|^5.0|^6.0",
                "symfony/translation": "^4.4|^5.0|^6.0",
                "symfony/translation-contracts": "^1.1|^2|^3",
                "twig/twig": "^2.13|^3.0.4"
            },
            "suggest": {
                "symfony/browser-kit": "",
                "symfony/config": "",
                "symfony/console": "",
                "symfony/dependency-injection": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\HttpKernel\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides a structured process for converting a Request into a Response",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/http-kernel/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-30T13:02:02+00:00"
        },
        {
            "name": "symfony/mailer",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/mailer.git",
                "reference": "0d2c0e0fdd07c80d95eadcdbba6af41e9aafcfa5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/mailer/zipball/0d2c0e0fdd07c80d95eadcdbba6af41e9aafcfa5",
                "reference": "0d2c0e0fdd07c80d95eadcdbba6af41e9aafcfa5",
                "shasum": ""
            },
            "require": {
                "egulias/email-validator": "^2.1.10|^3|^4",
                "php": ">=7.2.5",
                "psr/event-dispatcher": "^1",
                "psr/log": "^1|^2|^3",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/event-dispatcher": "^4.4|^5.0|^6.0",
                "symfony/mime": "^5.2.6|^6.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/service-contracts": "^1.1|^2|^3"
            },
            "conflict": {
                "symfony/http-kernel": "<4.4"
            },
            "require-dev": {
                "symfony/http-client": "^4.4|^5.0|^6.0",
                "symfony/messenger": "^4.4|^5.0|^6.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Mailer\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Helps sending emails",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/mailer/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-02T08:41:43+00:00"
        },
        {
            "name": "symfony/mime",
            "version": "v5.4.26",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/mime.git",
                "reference": "2ea06dfeee20000a319d8407cea1d47533d5a9d2"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/mime/zipball/2ea06dfeee20000a319d8407cea1d47533d5a9d2",
                "reference": "2ea06dfeee20000a319d8407cea1d47533d5a9d2",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-intl-idn": "^1.10",
                "symfony/polyfill-mbstring": "^1.0",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "egulias/email-validator": "~3.0.0",
                "phpdocumentor/reflection-docblock": "<3.2.2",
                "phpdocumentor/type-resolver": "<1.4.0",
                "symfony/mailer": "<4.4",
                "symfony/serializer": "<5.4.26|>=6,<6.2.13|>=6.3,<6.3.2"
            },
            "require-dev": {
                "egulias/email-validator": "^2.1.10|^3.1|^4",
                "phpdocumentor/reflection-docblock": "^3.0|^4.0|^5.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/property-access": "^4.4|^5.1|^6.0",
                "symfony/property-info": "^4.4|^5.1|^6.0",
                "symfony/serializer": "^5.4.26|~6.2.13|^6.3.2"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Mime\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Allows manipulating MIME messages",
            "homepage": "https://symfony.com",
            "keywords": [
                "mime",
                "mime-type"
            ],
            "support": {
                "source": "https://github.com/symfony/mime/tree/v5.4.26"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-27T06:29:31+00:00"
        },
        {
            "name": "symfony/password-hasher",
            "version": "v5.4.31",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/password-hasher.git",
                "reference": "f1a07181f3442836b0aadfd4c65841804d4173c4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/password-hasher/zipball/f1a07181f3442836b0aadfd4c65841804d4173c4",
                "reference": "f1a07181f3442836b0aadfd4c65841804d4173c4",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.15"
            },
            "conflict": {
                "symfony/security-core": "<5.3"
            },
            "require-dev": {
                "symfony/console": "^5.3|^6.0",
                "symfony/security-core": "^5.3|^6.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\PasswordHasher\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Robin Chalas",
                    "email": "robin.chalas@gmail.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides password hashing utilities",
            "homepage": "https://symfony.com",
            "keywords": [
                "hashing",
                "password"
            ],
            "support": {
                "source": "https://github.com/symfony/password-hasher/tree/v5.4.31"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-02T10:18:11+00:00"
        },
        {
            "name": "symfony/polyfill-ctype",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-ctype.git",
                "reference": "ea208ce43cbb04af6867b4fdddb1bdbf84cc28cb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-ctype/zipball/ea208ce43cbb04af6867b4fdddb1bdbf84cc28cb",
                "reference": "ea208ce43cbb04af6867b4fdddb1bdbf84cc28cb",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "provide": {
                "ext-ctype": "*"
            },
            "suggest": {
                "ext-ctype": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Ctype\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Gert de Pagter",
                    "email": "BackEndTea@gmail.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for ctype functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "ctype",
                "polyfill",
                "portable"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-ctype/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-intl-grapheme",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-intl-grapheme.git",
                "reference": "875e90aeea2777b6f135677f618529449334a612"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/875e90aeea2777b6f135677f618529449334a612",
                "reference": "875e90aeea2777b6f135677f618529449334a612",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "suggest": {
                "ext-intl": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Intl\\Grapheme\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for intl's grapheme_* functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "grapheme",
                "intl",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-intl-grapheme/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-intl-idn",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-intl-idn.git",
                "reference": "ecaafce9f77234a6a449d29e49267ba10499116d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/ecaafce9f77234a6a449d29e49267ba10499116d",
                "reference": "ecaafce9f77234a6a449d29e49267ba10499116d",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1",
                "symfony/polyfill-intl-normalizer": "^1.10",
                "symfony/polyfill-php72": "^1.10"
            },
            "suggest": {
                "ext-intl": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Intl\\Idn\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Laurent Bassin",
                    "email": "laurent@bassin.info"
                },
                {
                    "name": "Trevor Rowbotham",
                    "email": "trevor.rowbotham@pm.me"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for intl's idn_to_ascii and idn_to_utf8 functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "idn",
                "intl",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-intl-idn/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:30:37+00:00"
        },
        {
            "name": "symfony/polyfill-intl-normalizer",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-intl-normalizer.git",
                "reference": "8c4ad05dd0120b6a53c1ca374dca2ad0a1c4ed92"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8c4ad05dd0120b6a53c1ca374dca2ad0a1c4ed92",
                "reference": "8c4ad05dd0120b6a53c1ca374dca2ad0a1c4ed92",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "suggest": {
                "ext-intl": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Intl\\Normalizer\\": ""
                },
                "classmap": [
                    "Resources/stubs"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for intl's Normalizer class and related functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "intl",
                "normalizer",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-intl-normalizer/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-mbstring",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-mbstring.git",
                "reference": "42292d99c55abe617799667f454222c54c60e229"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/42292d99c55abe617799667f454222c54c60e229",
                "reference": "42292d99c55abe617799667f454222c54c60e229",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "provide": {
                "ext-mbstring": "*"
            },
            "suggest": {
                "ext-mbstring": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Mbstring\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for the Mbstring extension",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "mbstring",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-mbstring/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-28T09:04:16+00:00"
        },
        {
            "name": "symfony/polyfill-php56",
            "version": "v1.20.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php56.git",
                "reference": "54b8cd7e6c1643d78d011f3be89f3ef1f9f4c675"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php56/zipball/54b8cd7e6c1643d78d011f3be89f3ef1f9f4c675",
                "reference": "54b8cd7e6c1643d78d011f3be89f3ef1f9f4c675",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "metapackage",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.20-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 5.6+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-php56/tree/v1.20.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-23T14:02:19+00:00"
        },
        {
            "name": "symfony/polyfill-php72",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php72.git",
                "reference": "70f4aebd92afca2f865444d30a4d2151c13c3179"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php72/zipball/70f4aebd92afca2f865444d30a4d2151c13c3179",
                "reference": "70f4aebd92afca2f865444d30a4d2151c13c3179",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Php72\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 7.2+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-php72/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-php73",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php73.git",
                "reference": "fe2f306d1d9d346a7fee353d0d5012e401e984b5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php73/zipball/fe2f306d1d9d346a7fee353d0d5012e401e984b5",
                "reference": "fe2f306d1d9d346a7fee353d0d5012e401e984b5",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Php73\\": ""
                },
                "classmap": [
                    "Resources/stubs"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 7.3+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-php73/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-php80",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php80.git",
                "reference": "6caa57379c4aec19c0a12a38b59b26487dcfe4b5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php80/zipball/6caa57379c4aec19c0a12a38b59b26487dcfe4b5",
                "reference": "6caa57379c4aec19c0a12a38b59b26487dcfe4b5",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Php80\\": ""
                },
                "classmap": [
                    "Resources/stubs"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Ion Bazan",
                    "email": "ion.bazan@gmail.com"
                },
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 8.0+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-php80/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/polyfill-php81",
            "version": "v1.28.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php81.git",
                "reference": "7581cd600fa9fd681b797d00b02f068e2f13263b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php81/zipball/7581cd600fa9fd681b797d00b02f068e2f13263b",
                "reference": "7581cd600fa9fd681b797d00b02f068e2f13263b",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.28-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "files": [
                    "bootstrap.php"
                ],
                "psr-4": {
                    "Symfony\\Polyfill\\Php81\\": ""
                },
                "classmap": [
                    "Resources/stubs"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 8.1+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "support": {
                "source": "https://github.com/symfony/polyfill-php81/tree/v1.28.0"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-26T09:26:14+00:00"
        },
        {
            "name": "symfony/property-access",
            "version": "v5.4.26",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/property-access.git",
                "reference": "0249e46f69e92049a488f39fcf531cb42c50caaa"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/property-access/zipball/0249e46f69e92049a488f39fcf531cb42c50caaa",
                "reference": "0249e46f69e92049a488f39fcf531cb42c50caaa",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16",
                "symfony/property-info": "^5.2|^6.0"
            },
            "require-dev": {
                "symfony/cache": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "psr/cache-implementation": "To cache access methods."
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\PropertyAccess\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides functions to read and write from/to an object or array using a simple string notation",
            "homepage": "https://symfony.com",
            "keywords": [
                "access",
                "array",
                "extraction",
                "index",
                "injection",
                "object",
                "property",
                "property-path",
                "reflection"
            ],
            "support": {
                "source": "https://github.com/symfony/property-access/tree/v5.4.26"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-13T15:20:41+00:00"
        },
        {
            "name": "symfony/property-info",
            "version": "v5.4.24",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/property-info.git",
                "reference": "d43b85b00699b4484964c297575b5c6f9dc5f6e1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/property-info/zipball/d43b85b00699b4484964c297575b5c6f9dc5f6e1",
                "reference": "d43b85b00699b4484964c297575b5c6f9dc5f6e1",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16",
                "symfony/string": "^5.1|^6.0"
            },
            "conflict": {
                "phpdocumentor/reflection-docblock": "<3.2.2",
                "phpdocumentor/type-resolver": "<1.4.0",
                "symfony/dependency-injection": "<4.4"
            },
            "require-dev": {
                "doctrine/annotations": "^1.10.4|^2",
                "phpdocumentor/reflection-docblock": "^3.0|^4.0|^5.0",
                "phpstan/phpdoc-parser": "^1.0",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/serializer": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "phpdocumentor/reflection-docblock": "To use the PHPDoc",
                "psr/cache-implementation": "To cache results",
                "symfony/doctrine-bridge": "To use Doctrine metadata",
                "symfony/serializer": "To use Serializer metadata"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\PropertyInfo\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Kévin Dunglas",
                    "email": "dunglas@gmail.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Extracts information about PHP class' properties using metadata of popular sources",
            "homepage": "https://symfony.com",
            "keywords": [
                "doctrine",
                "phpdoc",
                "property",
                "symfony",
                "type",
                "validator"
            ],
            "support": {
                "source": "https://github.com/symfony/property-info/tree/v5.4.24"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-05-15T20:11:03+00:00"
        },
        {
            "name": "symfony/routing",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/routing.git",
                "reference": "f1d08ed59d7718845bb70acd7480fa7da8966ec0"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/routing/zipball/f1d08ed59d7718845bb70acd7480fa7da8966ec0",
                "reference": "f1d08ed59d7718845bb70acd7480fa7da8966ec0",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "doctrine/annotations": "<1.12",
                "symfony/config": "<5.3",
                "symfony/dependency-injection": "<4.4",
                "symfony/yaml": "<4.4"
            },
            "require-dev": {
                "doctrine/annotations": "^1.12|^2",
                "psr/log": "^1|^2|^3",
                "symfony/config": "^5.3|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/http-foundation": "^4.4|^5.0|^6.0",
                "symfony/yaml": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "symfony/config": "For using the all-in-one router or any loader",
                "symfony/expression-language": "For using expression matching",
                "symfony/http-foundation": "For using a Symfony Request object",
                "symfony/yaml": "For using the YAML loader"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Routing\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Maps an HTTP request to a set of configuration variables",
            "homepage": "https://symfony.com",
            "keywords": [
                "router",
                "routing",
                "uri",
                "url"
            ],
            "support": {
                "source": "https://github.com/symfony/routing/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-27T12:51:02+00:00"
        },
        {
            "name": "symfony/security-bundle",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/security-bundle.git",
                "reference": "6477c31e36dfa25b07befea20bc8326f4ba11d75"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/security-bundle/zipball/6477c31e36dfa25b07befea20bc8326f4ba11d75",
                "reference": "6477c31e36dfa25b07befea20bc8326f4ba11d75",
                "shasum": ""
            },
            "require": {
                "ext-xml": "*",
                "php": ">=7.2.5",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^5.3|^6.0",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/event-dispatcher": "^5.1|^6.0",
                "symfony/http-foundation": "^5.3|^6.0",
                "symfony/http-kernel": "^5.3|^6.0",
                "symfony/password-hasher": "^5.3|^6.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/security-core": "^5.4|^6.0",
                "symfony/security-csrf": "^4.4|^5.0|^6.0",
                "symfony/security-guard": "^5.3",
                "symfony/security-http": "^5.4.30|^6.3.6",
                "symfony/service-contracts": "^1.10|^2|^3"
            },
            "conflict": {
                "symfony/browser-kit": "<4.4",
                "symfony/console": "<4.4",
                "symfony/framework-bundle": "<4.4",
                "symfony/ldap": "<5.1",
                "symfony/twig-bundle": "<4.4"
            },
            "require-dev": {
                "doctrine/annotations": "^1.10.4|^2",
                "symfony/asset": "^4.4|^5.0|^6.0",
                "symfony/browser-kit": "^4.4|^5.0|^6.0",
                "symfony/console": "^4.4|^5.0|^6.0",
                "symfony/css-selector": "^4.4|^5.0|^6.0",
                "symfony/dom-crawler": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/form": "^4.4|^5.0|^6.0",
                "symfony/framework-bundle": "^5.3|^6.0",
                "symfony/ldap": "^5.3|^6.0",
                "symfony/process": "^4.4|^5.0|^6.0",
                "symfony/rate-limiter": "^5.2|^6.0",
                "symfony/serializer": "^4.4|^5.0|^6.0",
                "symfony/translation": "^4.4|^5.0|^6.0",
                "symfony/twig-bridge": "^4.4|^5.0|^6.0",
                "symfony/twig-bundle": "^4.4|^5.0|^6.0",
                "symfony/validator": "^4.4|^5.0|^6.0",
                "symfony/yaml": "^4.4|^5.0|^6.0",
                "twig/twig": "^2.13|^3.0.4"
            },
            "type": "symfony-bundle",
            "autoload": {
                "psr-4": {
                    "Symfony\\Bundle\\SecurityBundle\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides a tight integration of the Security component into the Symfony full-stack framework",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/security-bundle/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-19T08:26:08+00:00"
        },
        {
            "name": "symfony/security-core",
            "version": "v5.4.30",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/security-core.git",
                "reference": "3908c54da30dd68c2fe31915d82a1c81809d1928"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/security-core/zipball/3908c54da30dd68c2fe31915d82a1c81809d1928",
                "reference": "3908c54da30dd68c2fe31915d82a1c81809d1928",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/event-dispatcher-contracts": "^1.1|^2|^3",
                "symfony/password-hasher": "^5.3|^6.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/service-contracts": "^1.1.6|^2|^3"
            },
            "conflict": {
                "symfony/event-dispatcher": "<4.4",
                "symfony/http-foundation": "<5.3",
                "symfony/ldap": "<4.4",
                "symfony/security-guard": "<4.4",
                "symfony/validator": "<5.2"
            },
            "require-dev": {
                "psr/cache": "^1.0|^2.0|^3.0",
                "psr/container": "^1.0|^2.0",
                "psr/log": "^1|^2|^3",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/event-dispatcher": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/http-foundation": "^5.3|^6.0",
                "symfony/ldap": "^4.4|^5.0|^6.0",
                "symfony/translation": "^4.4|^5.0|^6.0",
                "symfony/validator": "^5.2|^6.0"
            },
            "suggest": {
                "psr/container-implementation": "To instantiate the Security class",
                "symfony/event-dispatcher": "",
                "symfony/expression-language": "For using the expression voter",
                "symfony/http-foundation": "",
                "symfony/ldap": "For using LDAP integration",
                "symfony/validator": "For using the user password constraint"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Security\\Core\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Security Component - Core Library",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/security-core/tree/v5.4.30"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-10-27T07:38:28+00:00"
        },
        {
            "name": "symfony/security-csrf",
            "version": "v5.4.27",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/security-csrf.git",
                "reference": "995fcfcc5a3be09df157b4960668f61cceb86611"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/security-csrf/zipball/995fcfcc5a3be09df157b4960668f61cceb86611",
                "reference": "995fcfcc5a3be09df157b4960668f61cceb86611",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.16",
                "symfony/security-core": "^4.4|^5.0|^6.0"
            },
            "conflict": {
                "symfony/http-foundation": "<5.3"
            },
            "require-dev": {
                "symfony/http-foundation": "^5.3|^6.0"
            },
            "suggest": {
                "symfony/http-foundation": "For using the class SessionTokenStorage."
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Security\\Csrf\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Security Component - CSRF Library",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/security-csrf/tree/v5.4.27"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-28T14:44:35+00:00"
        },
        {
            "name": "symfony/security-guard",
            "version": "v5.4.27",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/security-guard.git",
                "reference": "72c53142533462fc6fda4a429c2a21c2b944a8cc"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/security-guard/zipball/72c53142533462fc6fda4a429c2a21c2b944a8cc",
                "reference": "72c53142533462fc6fda4a429c2a21c2b944a8cc",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-php80": "^1.15",
                "symfony/security-core": "^5.0",
                "symfony/security-http": "^5.3"
            },
            "require-dev": {
                "psr/log": "^1|^2|^3"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Security\\Guard\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Security Component - Guard",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/security-guard/tree/v5.4.27"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-07-28T14:44:35+00:00"
        },
        {
            "name": "symfony/security-http",
            "version": "v5.4.31",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/security-http.git",
                "reference": "6d3cd5a4deee9697738db8d24258890ca4140ae9"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/security-http/zipball/6d3cd5a4deee9697738db8d24258890ca4140ae9",
                "reference": "6d3cd5a4deee9697738db8d24258890ca4140ae9",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/http-foundation": "^5.3|^6.0",
                "symfony/http-kernel": "^5.3|^6.0",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/property-access": "^4.4|^5.0|^6.0",
                "symfony/security-core": "^5.4.19|~6.0.19|~6.1.11|^6.2.5",
                "symfony/service-contracts": "^1.10|^2|^3"
            },
            "conflict": {
                "symfony/event-dispatcher": "<4.3",
                "symfony/security-bundle": "<5.3",
                "symfony/security-csrf": "<4.4"
            },
            "require-dev": {
                "psr/log": "^1|^2|^3",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/rate-limiter": "^5.2|^6.0",
                "symfony/routing": "^4.4|^5.0|^6.0",
                "symfony/security-csrf": "^4.4|^5.0|^6.0",
                "symfony/translation": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "symfony/routing": "For using the HttpUtils class to create sub-requests, redirect the user, and match URLs",
                "symfony/security-csrf": "For using tokens to protect authentication/logout attempts"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Security\\Http\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony Security Component - HTTP Integration",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/security-http/tree/v5.4.31"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-03T16:13:08+00:00"
        },
        {
            "name": "symfony/serializer",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/serializer.git",
                "reference": "b8353e4208e9161f34d22c4631c63404b26ba929"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/serializer/zipball/b8353e4208e9161f34d22c4631c63404b26ba929",
                "reference": "b8353e4208e9161f34d22c4631c63404b26ba929",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "doctrine/annotations": "<1.12",
                "phpdocumentor/reflection-docblock": "<3.2.2",
                "phpdocumentor/type-resolver": "<1.4.0",
                "symfony/dependency-injection": "<4.4",
                "symfony/property-access": "<5.4",
                "symfony/property-info": "<5.4.24|>=6,<6.2.11",
                "symfony/uid": "<5.3",
                "symfony/yaml": "<4.4"
            },
            "require-dev": {
                "doctrine/annotations": "^1.12|^2",
                "phpdocumentor/reflection-docblock": "^3.2|^4.0|^5.0",
                "symfony/cache": "^4.4|^5.0|^6.0",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/error-handler": "^4.4|^5.0|^6.0",
                "symfony/filesystem": "^4.4|^5.0|^6.0",
                "symfony/form": "^4.4|^5.0|^6.0",
                "symfony/http-foundation": "^4.4|^5.0|^6.0",
                "symfony/http-kernel": "^4.4|^5.0|^6.0",
                "symfony/mime": "^4.4|^5.0|^6.0",
                "symfony/property-access": "^5.4|^6.0",
                "symfony/property-info": "^5.4.24|^6.2.11",
                "symfony/uid": "^5.3|^6.0",
                "symfony/validator": "^4.4|^5.0|^6.0",
                "symfony/var-dumper": "^4.4|^5.0|^6.0",
                "symfony/var-exporter": "^4.4|^5.0|^6.0",
                "symfony/yaml": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "psr/cache-implementation": "For using the metadata cache.",
                "symfony/config": "For using the XML mapping loader.",
                "symfony/mime": "For using a MIME type guesser within the DataUriNormalizer.",
                "symfony/property-access": "For using the ObjectNormalizer.",
                "symfony/property-info": "To deserialize relations.",
                "symfony/var-exporter": "For using the metadata compiler.",
                "symfony/yaml": "For using the default YAML mapping loader."
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Serializer\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Handles serializing and deserializing data structures, including object graphs, into array structures or other formats like XML and JSON.",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/serializer/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-27T08:53:17+00:00"
        },
        {
            "name": "symfony/service-contracts",
            "version": "v2.5.2",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/service-contracts.git",
                "reference": "4b426aac47d6427cc1a1d0f7e2ac724627f5966c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/service-contracts/zipball/4b426aac47d6427cc1a1d0f7e2ac724627f5966c",
                "reference": "4b426aac47d6427cc1a1d0f7e2ac724627f5966c",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/container": "^1.1",
                "symfony/deprecation-contracts": "^2.1|^3"
            },
            "conflict": {
                "ext-psr": "<1.1|>=2"
            },
            "suggest": {
                "symfony/service-implementation": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "2.5-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Contracts\\Service\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Generic abstractions related to writing services",
            "homepage": "https://symfony.com",
            "keywords": [
                "abstractions",
                "contracts",
                "decoupling",
                "interfaces",
                "interoperability",
                "standards"
            ],
            "support": {
                "source": "https://github.com/symfony/service-contracts/tree/v2.5.2"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-05-30T19:17:29+00:00"
        },
        {
            "name": "symfony/stopwatch",
            "version": "v5.4.21",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/stopwatch.git",
                "reference": "f83692cd869a6f2391691d40a01e8acb89e76fee"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/stopwatch/zipball/f83692cd869a6f2391691d40a01e8acb89e76fee",
                "reference": "f83692cd869a6f2391691d40a01e8acb89e76fee",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/service-contracts": "^1|^2|^3"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Stopwatch\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides a way to profile code",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/stopwatch/tree/v5.4.21"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-02-14T08:03:56+00:00"
        },
        {
            "name": "symfony/string",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/string.git",
                "reference": "e3f98bfc7885c957488f443df82d97814a3ce061"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/string/zipball/e3f98bfc7885c957488f443df82d97814a3ce061",
                "reference": "e3f98bfc7885c957488f443df82d97814a3ce061",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-intl-grapheme": "~1.0",
                "symfony/polyfill-intl-normalizer": "~1.0",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "~1.15"
            },
            "conflict": {
                "symfony/translation-contracts": ">=3.0"
            },
            "require-dev": {
                "symfony/error-handler": "^4.4|^5.0|^6.0",
                "symfony/http-client": "^4.4|^5.0|^6.0",
                "symfony/translation-contracts": "^1.1|^2",
                "symfony/var-exporter": "^4.4|^5.0|^6.0"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "Resources/functions.php"
                ],
                "psr-4": {
                    "Symfony\\Component\\String\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides an object-oriented API to strings and deals with bytes, UTF-8 code points and grapheme clusters in a unified way",
            "homepage": "https://symfony.com",
            "keywords": [
                "grapheme",
                "i18n",
                "string",
                "unicode",
                "utf-8",
                "utf8"
            ],
            "support": {
                "source": "https://github.com/symfony/string/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-09T13:20:28+00:00"
        },
        {
            "name": "symfony/translation-contracts",
            "version": "v2.5.2",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/translation-contracts.git",
                "reference": "136b19dd05cdf0709db6537d058bcab6dd6e2dbe"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/translation-contracts/zipball/136b19dd05cdf0709db6537d058bcab6dd6e2dbe",
                "reference": "136b19dd05cdf0709db6537d058bcab6dd6e2dbe",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5"
            },
            "suggest": {
                "symfony/translation-implementation": ""
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "2.5-dev"
                },
                "thanks": {
                    "name": "symfony/contracts",
                    "url": "https://github.com/symfony/contracts"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Contracts\\Translation\\": ""
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Generic abstractions related to translation",
            "homepage": "https://symfony.com",
            "keywords": [
                "abstractions",
                "contracts",
                "decoupling",
                "interfaces",
                "interoperability",
                "standards"
            ],
            "support": {
                "source": "https://github.com/symfony/translation-contracts/tree/v2.5.2"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2022-06-27T16:58:25+00:00"
        },
        {
            "name": "symfony/twig-bridge",
            "version": "v5.4.34",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/twig-bridge.git",
                "reference": "4ced0e91705d689b77763678367bd522d79f9f9a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/twig-bridge/zipball/4ced0e91705d689b77763678367bd522d79f9f9a",
                "reference": "4ced0e91705d689b77763678367bd522d79f9f9a",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/polyfill-php80": "^1.16",
                "symfony/translation-contracts": "^1.1|^2|^3",
                "twig/twig": "^2.13|^3.0.4"
            },
            "conflict": {
                "phpdocumentor/reflection-docblock": "<3.2.2",
                "phpdocumentor/type-resolver": "<1.4.0",
                "symfony/console": "<5.3",
                "symfony/form": "<5.4.21|>=6,<6.2.7",
                "symfony/http-foundation": "<5.3",
                "symfony/http-kernel": "<4.4",
                "symfony/translation": "<5.2",
                "symfony/workflow": "<5.2"
            },
            "require-dev": {
                "doctrine/annotations": "^1.12|^2",
                "egulias/email-validator": "^2.1.10|^3|^4",
                "phpdocumentor/reflection-docblock": "^3.0|^4.0|^5.0",
                "symfony/asset": "^4.4|^5.0|^6.0",
                "symfony/console": "^5.3|^6.0",
                "symfony/dependency-injection": "^4.4|^5.0|^6.0",
                "symfony/expression-language": "^4.4|^5.0|^6.0",
                "symfony/finder": "^4.4|^5.0|^6.0",
                "symfony/form": "^5.4.21|^6.2.7",
                "symfony/http-foundation": "^5.3|^6.0",
                "symfony/http-kernel": "^4.4|^5.0|^6.0",
                "symfony/intl": "^4.4|^5.0|^6.0",
                "symfony/mime": "^5.2|^6.0",
                "symfony/polyfill-intl-icu": "~1.0",
                "symfony/property-info": "^4.4|^5.1|^6.0",
                "symfony/routing": "^4.4|^5.0|^6.0",
                "symfony/security-acl": "^2.8|^3.0",
                "symfony/security-core": "^4.4|^5.0|^6.0",
                "symfony/security-csrf": "^4.4|^5.0|^6.0",
                "symfony/security-http": "^4.4|^5.0|^6.0",
                "symfony/serializer": "^5.2|^6.0",
                "symfony/stopwatch": "^4.4|^5.0|^6.0",
                "symfony/translation": "^5.2|^6.0",
                "symfony/web-link": "^4.4|^5.0|^6.0",
                "symfony/workflow": "^5.2|^6.0",
                "symfony/yaml": "^4.4|^5.0|^6.0",
                "twig/cssinliner-extra": "^2.12|^3",
                "twig/inky-extra": "^2.12|^3",
                "twig/markdown-extra": "^2.12|^3"
            },
            "suggest": {
                "symfony/asset": "For using the AssetExtension",
                "symfony/expression-language": "For using the ExpressionExtension",
                "symfony/finder": "",
                "symfony/form": "For using the FormExtension",
                "symfony/http-kernel": "For using the HttpKernelExtension",
                "symfony/routing": "For using the RoutingExtension",
                "symfony/security-core": "For using the SecurityExtension",
                "symfony/security-csrf": "For using the CsrfExtension",
                "symfony/security-http": "For using the LogoutUrlExtension",
                "symfony/stopwatch": "For using the StopwatchExtension",
                "symfony/translation": "For using the TranslationExtension",
                "symfony/var-dumper": "For using the DumpExtension",
                "symfony/web-link": "For using the WebLinkExtension",
                "symfony/yaml": "For using the YamlExtension"
            },
            "type": "symfony-bridge",
            "autoload": {
                "psr-4": {
                    "Symfony\\Bridge\\Twig\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides integration for Twig with various Symfony components",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/twig-bridge/tree/v5.4.34"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-12-15T11:59:38+00:00"
        },
        {
            "name": "symfony/var-dumper",
            "version": "v6.0.19",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/var-dumper.git",
                "reference": "eb980457fa6899840fe1687e8627a03a7d8a3d52"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/var-dumper/zipball/eb980457fa6899840fe1687e8627a03a7d8a3d52",
                "reference": "eb980457fa6899840fe1687e8627a03a7d8a3d52",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.2",
                "symfony/polyfill-mbstring": "~1.0"
            },
            "conflict": {
                "phpunit/phpunit": "<5.4.3",
                "symfony/console": "<5.4"
            },
            "require-dev": {
                "ext-iconv": "*",
                "symfony/console": "^5.4|^6.0",
                "symfony/process": "^5.4|^6.0",
                "symfony/uid": "^5.4|^6.0",
                "twig/twig": "^2.13|^3.0.4"
            },
            "suggest": {
                "ext-iconv": "To convert non-UTF-8 strings to UTF-8 (or symfony/polyfill-iconv in case ext-iconv cannot be used).",
                "ext-intl": "To show region name in time zone dump",
                "symfony/console": "To use the ServerDumpCommand and/or the bin/var-dump-server script"
            },
            "bin": [
                "Resources/bin/var-dump-server"
            ],
            "type": "library",
            "autoload": {
                "files": [
                    "Resources/functions/dump.php"
                ],
                "psr-4": {
                    "Symfony\\Component\\VarDumper\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides mechanisms for walking through any arbitrary PHP variable",
            "homepage": "https://symfony.com",
            "keywords": [
                "debug",
                "dump"
            ],
            "support": {
                "source": "https://github.com/symfony/var-dumper/tree/v6.0.19"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-20T17:44:14+00:00"
        },
        {
            "name": "symfony/var-exporter",
            "version": "v5.4.32",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/var-exporter.git",
                "reference": "fdb022f0d3d41df240c18e2eb9a117c430f06add"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/var-exporter/zipball/fdb022f0d3d41df240c18e2eb9a117c430f06add",
                "reference": "fdb022f0d3d41df240c18e2eb9a117c430f06add",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/polyfill-php80": "^1.16"
            },
            "require-dev": {
                "symfony/var-dumper": "^4.4.9|^5.0.9|^6.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\VarExporter\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Allows exporting any serializable PHP data structure to plain PHP code",
            "homepage": "https://symfony.com",
            "keywords": [
                "clone",
                "construct",
                "export",
                "hydrate",
                "instantiate",
                "serialize"
            ],
            "support": {
                "source": "https://github.com/symfony/var-exporter/tree/v5.4.32"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-16T19:33:05+00:00"
        },
        {
            "name": "symfony/web-link",
            "version": "v5.4.21",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/web-link.git",
                "reference": "57c03a5e89ed7c2d7a1a09258dfec12f95f95adb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/web-link/zipball/57c03a5e89ed7c2d7a1a09258dfec12f95f95adb",
                "reference": "57c03a5e89ed7c2d7a1a09258dfec12f95f95adb",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "psr/link": "^1.0",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "symfony/http-kernel": "<5.3"
            },
            "provide": {
                "psr/link-implementation": "1.0"
            },
            "require-dev": {
                "symfony/http-kernel": "^5.3|^6.0"
            },
            "suggest": {
                "symfony/http-kernel": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\WebLink\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Kévin Dunglas",
                    "email": "dunglas@gmail.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Manages links between resources",
            "homepage": "https://symfony.com",
            "keywords": [
                "dns-prefetch",
                "http",
                "http2",
                "link",
                "performance",
                "prefetch",
                "preload",
                "prerender",
                "psr13",
                "push"
            ],
            "support": {
                "source": "https://github.com/symfony/web-link/tree/v5.4.21"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-02-14T08:03:56+00:00"
        },
        {
            "name": "twig/twig",
            "version": "v3.8.0",
            "source": {
                "type": "git",
                "url": "https://github.com/twigphp/Twig.git",
                "reference": "9d15f0ac07f44dc4217883ec6ae02fd555c6f71d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/twigphp/Twig/zipball/9d15f0ac07f44dc4217883ec6ae02fd555c6f71d",
                "reference": "9d15f0ac07f44dc4217883ec6ae02fd555c6f71d",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/polyfill-ctype": "^1.8",
                "symfony/polyfill-mbstring": "^1.3",
                "symfony/polyfill-php80": "^1.22"
            },
            "require-dev": {
                "psr/container": "^1.0|^2.0",
                "symfony/phpunit-bridge": "^5.4.9|^6.3|^7.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Twig\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com",
                    "homepage": "http://fabien.potencier.org",
                    "role": "Lead Developer"
                },
                {
                    "name": "Twig Team",
                    "role": "Contributors"
                },
                {
                    "name": "Armin Ronacher",
                    "email": "armin.ronacher@active-4.com",
                    "role": "Project Founder"
                }
            ],
            "description": "Twig, the flexible, fast, and secure template language for PHP",
            "homepage": "https://twig.symfony.com",
            "keywords": [
                "templating"
            ],
            "support": {
                "issues": "https://github.com/twigphp/Twig/issues",
                "source": "https://github.com/twigphp/Twig/tree/v3.8.0"
            },
            "funding": [
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/twig/twig",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-21T18:54:41+00:00"
        },
        {
            "name": "willdurand/negotiation",
            "version": "3.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/willdurand/Negotiation.git",
                "reference": "68e9ea0553ef6e2ee8db5c1d98829f111e623ec2"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/willdurand/Negotiation/zipball/68e9ea0553ef6e2ee8db5c1d98829f111e623ec2",
                "reference": "68e9ea0553ef6e2ee8db5c1d98829f111e623ec2",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1.0"
            },
            "require-dev": {
                "symfony/phpunit-bridge": "^5.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Negotiation\\": "src/Negotiation"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "William Durand",
                    "email": "will+git@drnd.me"
                }
            ],
            "description": "Content Negotiation tools for PHP provided as a standalone library.",
            "homepage": "http://williamdurand.fr/Negotiation/",
            "keywords": [
                "accept",
                "content",
                "format",
                "header",
                "negotiation"
            ],
            "support": {
                "issues": "https://github.com/willdurand/Negotiation/issues",
                "source": "https://github.com/willdurand/Negotiation/tree/3.1.0"
            },
            "time": "2022-01-30T20:08:53+00:00"
        }
    ],
    "packages-dev": [
        {
            "name": "behat/behat",
            "version": "v3.14.0",
            "source": {
                "type": "git",
                "url": "https://github.com/Behat/Behat.git",
                "reference": "2a3832d9cb853a794af3a576f9e524ae460f3340"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Behat/Behat/zipball/2a3832d9cb853a794af3a576f9e524ae460f3340",
                "reference": "2a3832d9cb853a794af3a576f9e524ae460f3340",
                "shasum": ""
            },
            "require": {
                "behat/gherkin": "^4.9.0",
                "behat/transliterator": "^1.2",
                "ext-mbstring": "*",
                "php": "^7.2 || ^8.0",
                "psr/container": "^1.0 || ^2.0",
                "symfony/config": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/console": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/dependency-injection": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/event-dispatcher": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/translation": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/yaml": "^4.4 || ^5.0 || ^6.0 || ^7.0"
            },
            "require-dev": {
                "herrera-io/box": "~1.6.1",
                "phpspec/prophecy": "^1.15",
                "phpunit/phpunit": "^8.5 || ^9.0",
                "symfony/process": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "vimeo/psalm": "^4.8"
            },
            "suggest": {
                "ext-dom": "Needed to output test results in JUnit format."
            },
            "bin": [
                "bin/behat"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Behat\\Hook\\": "src/Behat/Hook/",
                    "Behat\\Step\\": "src/Behat/Step/",
                    "Behat\\Behat\\": "src/Behat/Behat/",
                    "Behat\\Testwork\\": "src/Behat/Testwork/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com",
                    "homepage": "http://everzet.com"
                }
            ],
            "description": "Scenario-oriented BDD framework for PHP",
            "homepage": "http://behat.org/",
            "keywords": [
                "Agile",
                "BDD",
                "ScenarioBDD",
                "Scrum",
                "StoryBDD",
                "User story",
                "business",
                "development",
                "documentation",
                "examples",
                "symfony",
                "testing"
            ],
            "support": {
                "issues": "https://github.com/Behat/Behat/issues",
                "source": "https://github.com/Behat/Behat/tree/v3.14.0"
            },
            "time": "2023-12-09T13:55:02+00:00"
        },
        {
            "name": "behat/gherkin",
            "version": "v4.9.0",
            "source": {
                "type": "git",
                "url": "https://github.com/Behat/Gherkin.git",
                "reference": "0bc8d1e30e96183e4f36db9dc79caead300beff4"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Behat/Gherkin/zipball/0bc8d1e30e96183e4f36db9dc79caead300beff4",
                "reference": "0bc8d1e30e96183e4f36db9dc79caead300beff4",
                "shasum": ""
            },
            "require": {
                "php": "~7.2|~8.0"
            },
            "require-dev": {
                "cucumber/cucumber": "dev-gherkin-22.0.0",
                "phpunit/phpunit": "~8|~9",
                "symfony/yaml": "~3|~4|~5"
            },
            "suggest": {
                "symfony/yaml": "If you want to parse features, represented in YAML files"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Behat\\Gherkin": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com",
                    "homepage": "http://everzet.com"
                }
            ],
            "description": "Gherkin DSL parser for PHP",
            "homepage": "http://behat.org/",
            "keywords": [
                "BDD",
                "Behat",
                "Cucumber",
                "DSL",
                "gherkin",
                "parser"
            ],
            "support": {
                "issues": "https://github.com/Behat/Gherkin/issues",
                "source": "https://github.com/Behat/Gherkin/tree/v4.9.0"
            },
            "time": "2021-10-12T13:05:09+00:00"
        },
        {
            "name": "behat/mink",
            "version": "v1.11.0",
            "source": {
                "type": "git",
                "url": "https://github.com/minkphp/Mink.git",
                "reference": "d8527fdf8785aad38455fb426af457ab9937aece"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/minkphp/Mink/zipball/d8527fdf8785aad38455fb426af457ab9937aece",
                "reference": "d8527fdf8785aad38455fb426af457ab9937aece",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2",
                "symfony/css-selector": "^4.4 || ^5.0 || ^6.0 || ^7.0"
            },
            "require-dev": {
                "phpstan/phpstan": "^1.10",
                "phpstan/phpstan-phpunit": "^1.3",
                "phpunit/phpunit": "^8.5.22 || ^9.5.11",
                "symfony/error-handler": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/phpunit-bridge": "^5.4 || ^6.0 || ^7.0"
            },
            "suggest": {
                "behat/mink-browserkit-driver": "fast headless driver for any app without JS emulation",
                "behat/mink-selenium2-driver": "slow, but JS-enabled driver for any app (requires Selenium2)",
                "behat/mink-zombie-driver": "fast and JS-enabled headless driver for any app (requires node.js)",
                "dmore/chrome-mink-driver": "fast and JS-enabled driver for any app (requires chromium or google chrome)"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Behat\\Mink\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com",
                    "homepage": "http://everzet.com"
                }
            ],
            "description": "Browser controller/emulator abstraction for PHP",
            "homepage": "https://mink.behat.org/",
            "keywords": [
                "browser",
                "testing",
                "web"
            ],
            "support": {
                "issues": "https://github.com/minkphp/Mink/issues",
                "source": "https://github.com/minkphp/Mink/tree/v1.11.0"
            },
            "time": "2023-12-09T11:23:23+00:00"
        },
        {
            "name": "behat/mink-browserkit-driver",
            "version": "v2.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/minkphp/MinkBrowserKitDriver.git",
                "reference": "16d53476e42827ed3aafbfa4fde17a1743eafd50"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/minkphp/MinkBrowserKitDriver/zipball/16d53476e42827ed3aafbfa4fde17a1743eafd50",
                "reference": "16d53476e42827ed3aafbfa4fde17a1743eafd50",
                "shasum": ""
            },
            "require": {
                "behat/mink": "^1.11.0@dev",
                "ext-dom": "*",
                "php": ">=7.2",
                "symfony/browser-kit": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/dom-crawler": "^4.4 || ^5.0 || ^6.0 || ^7.0"
            },
            "require-dev": {
                "mink/driver-testsuite": "dev-master",
                "phpstan/phpstan": "^1.10",
                "phpstan/phpstan-phpunit": "^1.3",
                "phpunit/phpunit": "^8.5 || ^9.5",
                "symfony/error-handler": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/http-client": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/http-kernel": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "symfony/mime": "^4.4 || ^5.0 || ^6.0 || ^7.0",
                "yoast/phpunit-polyfills": "^1.0"
            },
            "type": "mink-driver",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Behat\\Mink\\Driver\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com",
                    "homepage": "http://everzet.com"
                }
            ],
            "description": "Symfony2 BrowserKit driver for Mink framework",
            "homepage": "https://mink.behat.org/",
            "keywords": [
                "Mink",
                "Symfony2",
                "browser",
                "testing"
            ],
            "support": {
                "issues": "https://github.com/minkphp/MinkBrowserKitDriver/issues",
                "source": "https://github.com/minkphp/MinkBrowserKitDriver/tree/v2.2.0"
            },
            "time": "2023-12-09T11:30:50+00:00"
        },
        {
            "name": "behat/transliterator",
            "version": "v1.5.0",
            "source": {
                "type": "git",
                "url": "https://github.com/Behat/Transliterator.git",
                "reference": "baac5873bac3749887d28ab68e2f74db3a4408af"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Behat/Transliterator/zipball/baac5873bac3749887d28ab68e2f74db3a4408af",
                "reference": "baac5873bac3749887d28ab68e2f74db3a4408af",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2"
            },
            "require-dev": {
                "chuyskywalker/rolling-curl": "^3.1",
                "php-yaoi/php-yaoi": "^1.0",
                "phpunit/phpunit": "^8.5.25 || ^9.5.19"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Behat\\Transliterator\\": "src/Behat/Transliterator"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Artistic-1.0"
            ],
            "description": "String transliterator",
            "keywords": [
                "i18n",
                "slug",
                "transliterator"
            ],
            "support": {
                "issues": "https://github.com/Behat/Transliterator/issues",
                "source": "https://github.com/Behat/Transliterator/tree/v1.5.0"
            },
            "time": "2022-03-30T09:27:43+00:00"
        },
        {
            "name": "behatch/contexts",
            "version": "3.3.0",
            "source": {
                "type": "git",
                "url": "https://github.com/Behatch/contexts.git",
                "reference": "e45284b1dddb9dce78e186a56683527802bccd47"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Behatch/contexts/zipball/e45284b1dddb9dce78e186a56683527802bccd47",
                "reference": "e45284b1dddb9dce78e186a56683527802bccd47",
                "shasum": ""
            },
            "require": {
                "behat/behat": "^3.0.13",
                "friends-of-behat/mink-extension": "^2.3.1",
                "justinrainbow/json-schema": "^5.0",
                "php": ">=5.5",
                "symfony/dom-crawler": "^2.4|^3.0|^4.0|^5.0",
                "symfony/http-foundation": "^2.3|^3.0|^4.0|^5.0",
                "symfony/property-access": "^2.3|^3.0|^4.0|^5.0"
            },
            "replace": {
                "sanpi/behatch-contexts": "self.version"
            },
            "require-dev": {
                "atoum/atoum": "^2.8|^3.0",
                "behat/mink-goutte-driver": "^1.1",
                "behat/mink-selenium2-driver": "^1.4@dev",
                "fabpot/goutte": "^3.2",
                "guzzlehttp/guzzle": "^6.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Behatch\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "beerware"
            ],
            "description": "Behatch contexts",
            "keywords": [
                "BDD",
                "Behat",
                "Context",
                "Symfony2"
            ],
            "support": {
                "issues": "https://github.com/Behatch/contexts/issues",
                "source": "https://github.com/Behatch/contexts/tree/3.3.0"
            },
            "abandoned": true,
            "time": "2020-02-27T08:40:50+00:00"
        },
        {
            "name": "friends-of-behat/mink-extension",
            "version": "v2.7.5",
            "source": {
                "type": "git",
                "url": "https://github.com/FriendsOfBehat/MinkExtension.git",
                "reference": "854336030e11983f580f49faad1b49a1238f9846"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/FriendsOfBehat/MinkExtension/zipball/854336030e11983f580f49faad1b49a1238f9846",
                "reference": "854336030e11983f580f49faad1b49a1238f9846",
                "shasum": ""
            },
            "require": {
                "behat/behat": "^3.0.5",
                "behat/mink": "^1.5",
                "php": ">=7.4",
                "symfony/config": "^4.4 || ^5.0 || ^6.0 || ^7.0"
            },
            "replace": {
                "behat/mink-extension": "self.version"
            },
            "require-dev": {
                "behat/mink-goutte-driver": "^1.1 || ^2.0",
                "phpspec/phpspec": "^6.0 || ^7.0 || 7.1.x-dev"
            },
            "type": "behat-extension",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.1.x-dev"
                }
            },
            "autoload": {
                "psr-0": {
                    "Behat\\MinkExtension": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Konstantin Kudryashov",
                    "email": "ever.zet@gmail.com"
                },
                {
                    "name": "Christophe Coevoet",
                    "email": "stof@notk.org"
                }
            ],
            "description": "Mink extension for Behat",
            "homepage": "http://extensions.behat.org/mink",
            "keywords": [
                "browser",
                "gui",
                "test",
                "web"
            ],
            "support": {
                "issues": "https://github.com/FriendsOfBehat/MinkExtension/issues",
                "source": "https://github.com/FriendsOfBehat/MinkExtension/tree/v2.7.5"
            },
            "time": "2024-01-11T09:12:02+00:00"
        },
        {
            "name": "justinrainbow/json-schema",
            "version": "v5.2.13",
            "source": {
                "type": "git",
                "url": "https://github.com/justinrainbow/json-schema.git",
                "reference": "fbbe7e5d79f618997bc3332a6f49246036c45793"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/justinrainbow/json-schema/zipball/fbbe7e5d79f618997bc3332a6f49246036c45793",
                "reference": "fbbe7e5d79f618997bc3332a6f49246036c45793",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.3"
            },
            "require-dev": {
                "friendsofphp/php-cs-fixer": "~2.2.20||~2.15.1",
                "json-schema/json-schema-test-suite": "1.2.0",
                "phpunit/phpunit": "^4.8.35"
            },
            "bin": [
                "bin/validate-json"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "JsonSchema\\": "src/JsonSchema/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Bruno Prieto Reis",
                    "email": "bruno.p.reis@gmail.com"
                },
                {
                    "name": "Justin Rainbow",
                    "email": "justin.rainbow@gmail.com"
                },
                {
                    "name": "Igor Wiedler",
                    "email": "igor@wiedler.ch"
                },
                {
                    "name": "Robert Schönthal",
                    "email": "seroscho@googlemail.com"
                }
            ],
            "description": "A library to validate a json schema.",
            "homepage": "https://github.com/justinrainbow/json-schema",
            "keywords": [
                "json",
                "schema"
            ],
            "support": {
                "issues": "https://github.com/justinrainbow/json-schema/issues",
                "source": "https://github.com/justinrainbow/json-schema/tree/v5.2.13"
            },
            "time": "2023-09-26T02:20:38+00:00"
        },
        {
            "name": "myclabs/deep-copy",
            "version": "1.11.1",
            "source": {
                "type": "git",
                "url": "https://github.com/myclabs/DeepCopy.git",
                "reference": "7284c22080590fb39f2ffa3e9057f10a4ddd0e0c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/myclabs/DeepCopy/zipball/7284c22080590fb39f2ffa3e9057f10a4ddd0e0c",
                "reference": "7284c22080590fb39f2ffa3e9057f10a4ddd0e0c",
                "shasum": ""
            },
            "require": {
                "php": "^7.1 || ^8.0"
            },
            "conflict": {
                "doctrine/collections": "<1.6.8",
                "doctrine/common": "<2.13.3 || >=3,<3.2.2"
            },
            "require-dev": {
                "doctrine/collections": "^1.6.8",
                "doctrine/common": "^2.13.3 || ^3.2.2",
                "phpunit/phpunit": "^7.5.20 || ^8.5.23 || ^9.5.13"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/DeepCopy/deep_copy.php"
                ],
                "psr-4": {
                    "DeepCopy\\": "src/DeepCopy/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "Create deep copies (clones) of your objects",
            "keywords": [
                "clone",
                "copy",
                "duplicate",
                "object",
                "object graph"
            ],
            "support": {
                "issues": "https://github.com/myclabs/DeepCopy/issues",
                "source": "https://github.com/myclabs/DeepCopy/tree/1.11.1"
            },
            "funding": [
                {
                    "url": "https://tidelift.com/funding/github/packagist/myclabs/deep-copy",
                    "type": "tidelift"
                }
            ],
            "time": "2023-03-08T13:26:56+00:00"
        },
        {
            "name": "nikic/php-parser",
            "version": "v5.0.0",
            "source": {
                "type": "git",
                "url": "https://github.com/nikic/PHP-Parser.git",
                "reference": "4a21235f7e56e713259a6f76bf4b5ea08502b9dc"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/nikic/PHP-Parser/zipball/4a21235f7e56e713259a6f76bf4b5ea08502b9dc",
                "reference": "4a21235f7e56e713259a6f76bf4b5ea08502b9dc",
                "shasum": ""
            },
            "require": {
                "ext-ctype": "*",
                "ext-json": "*",
                "ext-tokenizer": "*",
                "php": ">=7.4"
            },
            "require-dev": {
                "ircmaxell/php-yacc": "^0.0.7",
                "phpunit/phpunit": "^7.0 || ^8.0 || ^9.0"
            },
            "bin": [
                "bin/php-parse"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "PhpParser\\": "lib/PhpParser"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Nikita Popov"
                }
            ],
            "description": "A PHP parser written in PHP",
            "keywords": [
                "parser",
                "php"
            ],
            "support": {
                "issues": "https://github.com/nikic/PHP-Parser/issues",
                "source": "https://github.com/nikic/PHP-Parser/tree/v5.0.0"
            },
            "time": "2024-01-07T17:17:35+00:00"
        },
        {
            "name": "phar-io/manifest",
            "version": "2.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/phar-io/manifest.git",
                "reference": "97803eca37d319dfa7826cc2437fc020857acb53"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53",
                "reference": "97803eca37d319dfa7826cc2437fc020857acb53",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-phar": "*",
                "ext-xmlwriter": "*",
                "phar-io/version": "^3.0.1",
                "php": "^7.2 || ^8.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0.x-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Heuer",
                    "email": "sebastian@phpeople.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "Developer"
                }
            ],
            "description": "Component for reading phar.io manifest information from a PHP Archive (PHAR)",
            "support": {
                "issues": "https://github.com/phar-io/manifest/issues",
                "source": "https://github.com/phar-io/manifest/tree/2.0.3"
            },
            "time": "2021-07-20T11:28:43+00:00"
        },
        {
            "name": "phar-io/version",
            "version": "3.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/phar-io/version.git",
                "reference": "4f7fd7836c6f332bb2933569e566a0d6c4cbed74"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74",
                "reference": "4f7fd7836c6f332bb2933569e566a0d6c4cbed74",
                "shasum": ""
            },
            "require": {
                "php": "^7.2 || ^8.0"
            },
            "type": "library",
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Heuer",
                    "email": "sebastian@phpeople.de",
                    "role": "Developer"
                },
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "Developer"
                }
            ],
            "description": "Library for handling version information and constraints",
            "support": {
                "issues": "https://github.com/phar-io/version/issues",
                "source": "https://github.com/phar-io/version/tree/3.2.1"
            },
            "time": "2022-02-21T01:04:05+00:00"
        },
        {
            "name": "phpstan/phpstan",
            "version": "1.10.57",
            "source": {
                "type": "git",
                "url": "https://github.com/phpstan/phpstan.git",
                "reference": "1627b1d03446904aaa77593f370c5201d2ecc34e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/phpstan/phpstan/zipball/1627b1d03446904aaa77593f370c5201d2ecc34e",
                "reference": "1627b1d03446904aaa77593f370c5201d2ecc34e",
                "shasum": ""
            },
            "require": {
                "php": "^7.2|^8.0"
            },
            "conflict": {
                "phpstan/phpstan-shim": "*"
            },
            "bin": [
                "phpstan",
                "phpstan.phar"
            ],
            "type": "library",
            "autoload": {
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "description": "PHPStan - PHP Static Analysis Tool",
            "keywords": [
                "dev",
                "static analysis"
            ],
            "support": {
                "docs": "https://phpstan.org/user-guide/getting-started",
                "forum": "https://github.com/phpstan/phpstan/discussions",
                "issues": "https://github.com/phpstan/phpstan/issues",
                "security": "https://github.com/phpstan/phpstan/security/policy",
                "source": "https://github.com/phpstan/phpstan-src"
            },
            "funding": [
                {
                    "url": "https://github.com/ondrejmirtes",
                    "type": "github"
                },
                {
                    "url": "https://github.com/phpstan",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/phpstan/phpstan",
                    "type": "tidelift"
                }
            ],
            "time": "2024-01-24T11:51:34+00:00"
        },
        {
            "name": "phpunit/php-code-coverage",
            "version": "9.2.30",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-code-coverage.git",
                "reference": "ca2bd87d2f9215904682a9cb9bb37dda98e76089"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/ca2bd87d2f9215904682a9cb9bb37dda98e76089",
                "reference": "ca2bd87d2f9215904682a9cb9bb37dda98e76089",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-libxml": "*",
                "ext-xmlwriter": "*",
                "nikic/php-parser": "^4.18 || ^5.0",
                "php": ">=7.3",
                "phpunit/php-file-iterator": "^3.0.3",
                "phpunit/php-text-template": "^2.0.2",
                "sebastian/code-unit-reverse-lookup": "^2.0.2",
                "sebastian/complexity": "^2.0",
                "sebastian/environment": "^5.1.2",
                "sebastian/lines-of-code": "^1.0.3",
                "sebastian/version": "^3.0.1",
                "theseer/tokenizer": "^1.2.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "suggest": {
                "ext-pcov": "PHP extension that provides line coverage",
                "ext-xdebug": "PHP extension that provides line coverage as well as branch and path coverage"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "9.2-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library that provides collection, processing, and rendering functionality for PHP code coverage information.",
            "homepage": "https://github.com/sebastianbergmann/php-code-coverage",
            "keywords": [
                "coverage",
                "testing",
                "xunit"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/php-code-coverage/issues",
                "security": "https://github.com/sebastianbergmann/php-code-coverage/security/policy",
                "source": "https://github.com/sebastianbergmann/php-code-coverage/tree/9.2.30"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-12-22T06:47:57+00:00"
        },
        {
            "name": "phpunit/php-file-iterator",
            "version": "3.0.6",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-file-iterator.git",
                "reference": "cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf",
                "reference": "cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "FilterIterator implementation that filters files based on a list of suffixes.",
            "homepage": "https://github.com/sebastianbergmann/php-file-iterator/",
            "keywords": [
                "filesystem",
                "iterator"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/php-file-iterator/issues",
                "source": "https://github.com/sebastianbergmann/php-file-iterator/tree/3.0.6"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2021-12-02T12:48:52+00:00"
        },
        {
            "name": "phpunit/php-invoker",
            "version": "3.1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-invoker.git",
                "reference": "5a10147d0aaf65b58940a0b72f71c9ac0423cc67"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67",
                "reference": "5a10147d0aaf65b58940a0b72f71c9ac0423cc67",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "ext-pcntl": "*",
                "phpunit/phpunit": "^9.3"
            },
            "suggest": {
                "ext-pcntl": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.1-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Invoke callables with a timeout",
            "homepage": "https://github.com/sebastianbergmann/php-invoker/",
            "keywords": [
                "process"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/php-invoker/issues",
                "source": "https://github.com/sebastianbergmann/php-invoker/tree/3.1.1"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-09-28T05:58:55+00:00"
        },
        {
            "name": "phpunit/php-text-template",
            "version": "2.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-text-template.git",
                "reference": "5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28",
                "reference": "5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Simple template engine.",
            "homepage": "https://github.com/sebastianbergmann/php-text-template/",
            "keywords": [
                "template"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/php-text-template/issues",
                "source": "https://github.com/sebastianbergmann/php-text-template/tree/2.0.4"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-10-26T05:33:50+00:00"
        },
        {
            "name": "phpunit/php-timer",
            "version": "5.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/php-timer.git",
                "reference": "5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2",
                "reference": "5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Utility class for timing",
            "homepage": "https://github.com/sebastianbergmann/php-timer/",
            "keywords": [
                "timer"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/php-timer/issues",
                "source": "https://github.com/sebastianbergmann/php-timer/tree/5.0.3"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-10-26T13:16:10+00:00"
        },
        {
            "name": "phpunit/phpunit",
            "version": "9.6.16",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/phpunit.git",
                "reference": "3767b2c56ce02d01e3491046f33466a1ae60a37f"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/3767b2c56ce02d01e3491046f33466a1ae60a37f",
                "reference": "3767b2c56ce02d01e3491046f33466a1ae60a37f",
                "shasum": ""
            },
            "require": {
                "doctrine/instantiator": "^1.3.1 || ^2",
                "ext-dom": "*",
                "ext-json": "*",
                "ext-libxml": "*",
                "ext-mbstring": "*",
                "ext-xml": "*",
                "ext-xmlwriter": "*",
                "myclabs/deep-copy": "^1.10.1",
                "phar-io/manifest": "^2.0.3",
                "phar-io/version": "^3.0.2",
                "php": ">=7.3",
                "phpunit/php-code-coverage": "^9.2.28",
                "phpunit/php-file-iterator": "^3.0.5",
                "phpunit/php-invoker": "^3.1.1",
                "phpunit/php-text-template": "^2.0.3",
                "phpunit/php-timer": "^5.0.2",
                "sebastian/cli-parser": "^1.0.1",
                "sebastian/code-unit": "^1.0.6",
                "sebastian/comparator": "^4.0.8",
                "sebastian/diff": "^4.0.3",
                "sebastian/environment": "^5.1.3",
                "sebastian/exporter": "^4.0.5",
                "sebastian/global-state": "^5.0.1",
                "sebastian/object-enumerator": "^4.0.3",
                "sebastian/resource-operations": "^3.0.3",
                "sebastian/type": "^3.2",
                "sebastian/version": "^3.0.2"
            },
            "suggest": {
                "ext-soap": "To be able to generate mocks based on WSDL files",
                "ext-xdebug": "PHP extension that provides line coverage as well as branch and path coverage"
            },
            "bin": [
                "phpunit"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "9.6-dev"
                }
            },
            "autoload": {
                "files": [
                    "src/Framework/Assert/Functions.php"
                ],
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "The PHP Unit Testing framework.",
            "homepage": "https://phpunit.de/",
            "keywords": [
                "phpunit",
                "testing",
                "xunit"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/phpunit/issues",
                "security": "https://github.com/sebastianbergmann/phpunit/security/policy",
                "source": "https://github.com/sebastianbergmann/phpunit/tree/9.6.16"
            },
            "funding": [
                {
                    "url": "https://phpunit.de/sponsors.html",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/phpunit/phpunit",
                    "type": "tidelift"
                }
            ],
            "time": "2024-01-19T07:03:14+00:00"
        },
        {
            "name": "sebastian/cli-parser",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/cli-parser.git",
                "reference": "442e7c7e687e42adc03470c7b668bc4b2402c0b2"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2",
                "reference": "442e7c7e687e42adc03470c7b668bc4b2402c0b2",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library for parsing CLI options",
            "homepage": "https://github.com/sebastianbergmann/cli-parser",
            "support": {
                "issues": "https://github.com/sebastianbergmann/cli-parser/issues",
                "source": "https://github.com/sebastianbergmann/cli-parser/tree/1.0.1"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-09-28T06:08:49+00:00"
        },
        {
            "name": "sebastian/code-unit",
            "version": "1.0.8",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/code-unit.git",
                "reference": "1fc9f64c0927627ef78ba436c9b17d967e68e120"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120",
                "reference": "1fc9f64c0927627ef78ba436c9b17d967e68e120",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Collection of value objects that represent the PHP code units",
            "homepage": "https://github.com/sebastianbergmann/code-unit",
            "support": {
                "issues": "https://github.com/sebastianbergmann/code-unit/issues",
                "source": "https://github.com/sebastianbergmann/code-unit/tree/1.0.8"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-10-26T13:08:54+00:00"
        },
        {
            "name": "sebastian/code-unit-reverse-lookup",
            "version": "2.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/code-unit-reverse-lookup.git",
                "reference": "ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5",
                "reference": "ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Looks up which function or method a line of code belongs to",
            "homepage": "https://github.com/sebastianbergmann/code-unit-reverse-lookup/",
            "support": {
                "issues": "https://github.com/sebastianbergmann/code-unit-reverse-lookup/issues",
                "source": "https://github.com/sebastianbergmann/code-unit-reverse-lookup/tree/2.0.3"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-09-28T05:30:19+00:00"
        },
        {
            "name": "sebastian/comparator",
            "version": "4.0.8",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/comparator.git",
                "reference": "fa0f136dd2334583309d32b62544682ee972b51a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a",
                "reference": "fa0f136dd2334583309d32b62544682ee972b51a",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3",
                "sebastian/diff": "^4.0",
                "sebastian/exporter": "^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Volker Dusch",
                    "email": "github@wallbash.com"
                },
                {
                    "name": "Bernhard Schussek",
                    "email": "bschussek@2bepublished.at"
                }
            ],
            "description": "Provides the functionality to compare PHP values for equality",
            "homepage": "https://github.com/sebastianbergmann/comparator",
            "keywords": [
                "comparator",
                "compare",
                "equality"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/comparator/issues",
                "source": "https://github.com/sebastianbergmann/comparator/tree/4.0.8"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2022-09-14T12:41:17+00:00"
        },
        {
            "name": "sebastian/complexity",
            "version": "2.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/complexity.git",
                "reference": "25f207c40d62b8b7aa32f5ab026c53561964053a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/complexity/zipball/25f207c40d62b8b7aa32f5ab026c53561964053a",
                "reference": "25f207c40d62b8b7aa32f5ab026c53561964053a",
                "shasum": ""
            },
            "require": {
                "nikic/php-parser": "^4.18 || ^5.0",
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library for calculating the complexity of PHP code units",
            "homepage": "https://github.com/sebastianbergmann/complexity",
            "support": {
                "issues": "https://github.com/sebastianbergmann/complexity/issues",
                "source": "https://github.com/sebastianbergmann/complexity/tree/2.0.3"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-12-22T06:19:30+00:00"
        },
        {
            "name": "sebastian/diff",
            "version": "4.0.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/diff.git",
                "reference": "74be17022044ebaaecfdf0c5cd504fc9cd5a7131"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/diff/zipball/74be17022044ebaaecfdf0c5cd504fc9cd5a7131",
                "reference": "74be17022044ebaaecfdf0c5cd504fc9cd5a7131",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3",
                "symfony/process": "^4.2 || ^5"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Kore Nordmann",
                    "email": "mail@kore-nordmann.de"
                }
            ],
            "description": "Diff implementation",
            "homepage": "https://github.com/sebastianbergmann/diff",
            "keywords": [
                "diff",
                "udiff",
                "unidiff",
                "unified diff"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/diff/issues",
                "source": "https://github.com/sebastianbergmann/diff/tree/4.0.5"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-05-07T05:35:17+00:00"
        },
        {
            "name": "sebastian/environment",
            "version": "5.1.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/environment.git",
                "reference": "830c43a844f1f8d5b7a1f6d6076b784454d8b7ed"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed",
                "reference": "830c43a844f1f8d5b7a1f6d6076b784454d8b7ed",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "suggest": {
                "ext-posix": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.1-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Provides functionality to handle HHVM/PHP environments",
            "homepage": "http://www.github.com/sebastianbergmann/environment",
            "keywords": [
                "Xdebug",
                "environment",
                "hhvm"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/environment/issues",
                "source": "https://github.com/sebastianbergmann/environment/tree/5.1.5"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-02-03T06:03:51+00:00"
        },
        {
            "name": "sebastian/exporter",
            "version": "4.0.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/exporter.git",
                "reference": "ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/exporter/zipball/ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d",
                "reference": "ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3",
                "sebastian/recursion-context": "^4.0"
            },
            "require-dev": {
                "ext-mbstring": "*",
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Volker Dusch",
                    "email": "github@wallbash.com"
                },
                {
                    "name": "Adam Harvey",
                    "email": "aharvey@php.net"
                },
                {
                    "name": "Bernhard Schussek",
                    "email": "bschussek@gmail.com"
                }
            ],
            "description": "Provides the functionality to export PHP variables for visualization",
            "homepage": "https://www.github.com/sebastianbergmann/exporter",
            "keywords": [
                "export",
                "exporter"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/exporter/issues",
                "source": "https://github.com/sebastianbergmann/exporter/tree/4.0.5"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2022-09-14T06:03:37+00:00"
        },
        {
            "name": "sebastian/global-state",
            "version": "5.0.6",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/global-state.git",
                "reference": "bde739e7565280bda77be70044ac1047bc007e34"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/global-state/zipball/bde739e7565280bda77be70044ac1047bc007e34",
                "reference": "bde739e7565280bda77be70044ac1047bc007e34",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3",
                "sebastian/object-reflector": "^2.0",
                "sebastian/recursion-context": "^4.0"
            },
            "require-dev": {
                "ext-dom": "*",
                "phpunit/phpunit": "^9.3"
            },
            "suggest": {
                "ext-uopz": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Snapshotting of global state",
            "homepage": "http://www.github.com/sebastianbergmann/global-state",
            "keywords": [
                "global state"
            ],
            "support": {
                "issues": "https://github.com/sebastianbergmann/global-state/issues",
                "source": "https://github.com/sebastianbergmann/global-state/tree/5.0.6"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-08-02T09:26:13+00:00"
        },
        {
            "name": "sebastian/lines-of-code",
            "version": "1.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/lines-of-code.git",
                "reference": "e1e4a170560925c26d424b6a03aed157e7dcc5c5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/e1e4a170560925c26d424b6a03aed157e7dcc5c5",
                "reference": "e1e4a170560925c26d424b6a03aed157e7dcc5c5",
                "shasum": ""
            },
            "require": {
                "nikic/php-parser": "^4.18 || ^5.0",
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library for counting the lines of code in PHP source code",
            "homepage": "https://github.com/sebastianbergmann/lines-of-code",
            "support": {
                "issues": "https://github.com/sebastianbergmann/lines-of-code/issues",
                "source": "https://github.com/sebastianbergmann/lines-of-code/tree/1.0.4"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-12-22T06:20:34+00:00"
        },
        {
            "name": "sebastian/object-enumerator",
            "version": "4.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/object-enumerator.git",
                "reference": "5c9eeac41b290a3712d88851518825ad78f45c71"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71",
                "reference": "5c9eeac41b290a3712d88851518825ad78f45c71",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3",
                "sebastian/object-reflector": "^2.0",
                "sebastian/recursion-context": "^4.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Traverses array structures and object graphs to enumerate all referenced objects",
            "homepage": "https://github.com/sebastianbergmann/object-enumerator/",
            "support": {
                "issues": "https://github.com/sebastianbergmann/object-enumerator/issues",
                "source": "https://github.com/sebastianbergmann/object-enumerator/tree/4.0.4"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-10-26T13:12:34+00:00"
        },
        {
            "name": "sebastian/object-reflector",
            "version": "2.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/object-reflector.git",
                "reference": "b4f479ebdbf63ac605d183ece17d8d7fe49c15c7"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7",
                "reference": "b4f479ebdbf63ac605d183ece17d8d7fe49c15c7",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Allows reflection of object attributes, including inherited and non-public ones",
            "homepage": "https://github.com/sebastianbergmann/object-reflector/",
            "support": {
                "issues": "https://github.com/sebastianbergmann/object-reflector/issues",
                "source": "https://github.com/sebastianbergmann/object-reflector/tree/2.0.4"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-10-26T13:14:26+00:00"
        },
        {
            "name": "sebastian/recursion-context",
            "version": "4.0.5",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/recursion-context.git",
                "reference": "e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1",
                "reference": "e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "4.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                },
                {
                    "name": "Jeff Welch",
                    "email": "whatthejeff@gmail.com"
                },
                {
                    "name": "Adam Harvey",
                    "email": "aharvey@php.net"
                }
            ],
            "description": "Provides functionality to recursively process PHP variables",
            "homepage": "https://github.com/sebastianbergmann/recursion-context",
            "support": {
                "issues": "https://github.com/sebastianbergmann/recursion-context/issues",
                "source": "https://github.com/sebastianbergmann/recursion-context/tree/4.0.5"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-02-03T06:07:39+00:00"
        },
        {
            "name": "sebastian/resource-operations",
            "version": "3.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/resource-operations.git",
                "reference": "0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8",
                "reference": "0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de"
                }
            ],
            "description": "Provides a list of PHP built-in functions that operate on resources",
            "homepage": "https://www.github.com/sebastianbergmann/resource-operations",
            "support": {
                "issues": "https://github.com/sebastianbergmann/resource-operations/issues",
                "source": "https://github.com/sebastianbergmann/resource-operations/tree/3.0.3"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-09-28T06:45:17+00:00"
        },
        {
            "name": "sebastian/type",
            "version": "3.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/type.git",
                "reference": "75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7",
                "reference": "75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "require-dev": {
                "phpunit/phpunit": "^9.5"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.2-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Collection of value objects that represent the types of the PHP type system",
            "homepage": "https://github.com/sebastianbergmann/type",
            "support": {
                "issues": "https://github.com/sebastianbergmann/type/issues",
                "source": "https://github.com/sebastianbergmann/type/tree/3.2.1"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2023-02-03T06:13:03+00:00"
        },
        {
            "name": "sebastian/version",
            "version": "3.0.2",
            "source": {
                "type": "git",
                "url": "https://github.com/sebastianbergmann/version.git",
                "reference": "c6c1022351a901512170118436c764e473f6de8c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c",
                "reference": "c6c1022351a901512170118436c764e473f6de8c",
                "shasum": ""
            },
            "require": {
                "php": ">=7.3"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.0-dev"
                }
            },
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Sebastian Bergmann",
                    "email": "sebastian@phpunit.de",
                    "role": "lead"
                }
            ],
            "description": "Library that helps with managing the version number of Git-hosted PHP projects",
            "homepage": "https://github.com/sebastianbergmann/version",
            "support": {
                "issues": "https://github.com/sebastianbergmann/version/issues",
                "source": "https://github.com/sebastianbergmann/version/tree/3.0.2"
            },
            "funding": [
                {
                    "url": "https://github.com/sebastianbergmann",
                    "type": "github"
                }
            ],
            "time": "2020-09-28T06:39:44+00:00"
        },
        {
            "name": "symfony/browser-kit",
            "version": "v6.0.19",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/browser-kit.git",
                "reference": "4d1bf7886e2af0a194332486273debcd6662cfc9"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/browser-kit/zipball/4d1bf7886e2af0a194332486273debcd6662cfc9",
                "reference": "4d1bf7886e2af0a194332486273debcd6662cfc9",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.2",
                "symfony/dom-crawler": "^5.4|^6.0"
            },
            "require-dev": {
                "symfony/css-selector": "^5.4|^6.0",
                "symfony/http-client": "^5.4|^6.0",
                "symfony/mime": "^5.4|^6.0",
                "symfony/process": "^5.4|^6.0"
            },
            "suggest": {
                "symfony/process": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\BrowserKit\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Simulates the behavior of a web browser, allowing you to make requests, click on links and submit forms programmatically",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/browser-kit/tree/v6.0.19"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-01T08:36:10+00:00"
        },
        {
            "name": "symfony/css-selector",
            "version": "v6.0.19",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/css-selector.git",
                "reference": "f1d00bddb83a4cb2138564b2150001cb6ce272b1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/css-selector/zipball/f1d00bddb83a4cb2138564b2150001cb6ce272b1",
                "reference": "f1d00bddb83a4cb2138564b2150001cb6ce272b1",
                "shasum": ""
            },
            "require": {
                "php": ">=8.0.2"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\CssSelector\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Jean-François Simon",
                    "email": "jeanfrancois.simon@sensiolabs.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Converts CSS selectors to XPath expressions",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/css-selector/tree/v6.0.19"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-01-01T08:36:10+00:00"
        },
        {
            "name": "symfony/dom-crawler",
            "version": "v5.4.32",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/dom-crawler.git",
                "reference": "728f1fc136252a626ba5a69c02bd66a3697ff201"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/dom-crawler/zipball/728f1fc136252a626ba5a69c02bd66a3697ff201",
                "reference": "728f1fc136252a626ba5a69c02bd66a3697ff201",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-ctype": "~1.8",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "^1.16"
            },
            "conflict": {
                "masterminds/html5": "<2.6"
            },
            "require-dev": {
                "masterminds/html5": "^2.6",
                "symfony/css-selector": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "symfony/css-selector": ""
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\DomCrawler\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Eases DOM navigation for HTML and XML documents",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/dom-crawler/tree/v5.4.32"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-17T20:43:48+00:00"
        },
        {
            "name": "symfony/translation",
            "version": "v5.4.31",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/translation.git",
                "reference": "ba72f72fceddf36f00bd495966b5873f2d17ad8f"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/translation/zipball/ba72f72fceddf36f00bd495966b5873f2d17ad8f",
                "reference": "ba72f72fceddf36f00bd495966b5873f2d17ad8f",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-mbstring": "~1.0",
                "symfony/polyfill-php80": "^1.16",
                "symfony/translation-contracts": "^2.3"
            },
            "conflict": {
                "symfony/config": "<4.4",
                "symfony/console": "<5.3",
                "symfony/dependency-injection": "<5.0",
                "symfony/http-kernel": "<5.0",
                "symfony/twig-bundle": "<5.0",
                "symfony/yaml": "<4.4"
            },
            "provide": {
                "symfony/translation-implementation": "2.3"
            },
            "require-dev": {
                "psr/log": "^1|^2|^3",
                "symfony/config": "^4.4|^5.0|^6.0",
                "symfony/console": "^5.4|^6.0",
                "symfony/dependency-injection": "^5.0|^6.0",
                "symfony/finder": "^4.4|^5.0|^6.0",
                "symfony/http-client-contracts": "^1.1|^2.0|^3.0",
                "symfony/http-kernel": "^5.0|^6.0",
                "symfony/intl": "^4.4|^5.0|^6.0",
                "symfony/polyfill-intl-icu": "^1.21",
                "symfony/service-contracts": "^1.1.2|^2|^3",
                "symfony/yaml": "^4.4|^5.0|^6.0"
            },
            "suggest": {
                "psr/log-implementation": "To use logging capability in translator",
                "symfony/config": "",
                "symfony/yaml": ""
            },
            "type": "library",
            "autoload": {
                "files": [
                    "Resources/functions.php"
                ],
                "psr-4": {
                    "Symfony\\Component\\Translation\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Provides tools to internationalize your application",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/translation/tree/v5.4.31"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-03T16:16:43+00:00"
        },
        {
            "name": "symfony/yaml",
            "version": "v5.4.31",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/yaml.git",
                "reference": "f387675d7f5fc4231f7554baa70681f222f73563"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/yaml/zipball/f387675d7f5fc4231f7554baa70681f222f73563",
                "reference": "f387675d7f5fc4231f7554baa70681f222f73563",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2.5",
                "symfony/deprecation-contracts": "^2.1|^3",
                "symfony/polyfill-ctype": "^1.8"
            },
            "conflict": {
                "symfony/console": "<5.3"
            },
            "require-dev": {
                "symfony/console": "^5.3|^6.0"
            },
            "suggest": {
                "symfony/console": "For validating YAML files using the lint command"
            },
            "bin": [
                "Resources/bin/yaml-lint"
            ],
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Symfony\\Component\\Yaml\\": ""
                },
                "exclude-from-classmap": [
                    "/Tests/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Fabien Potencier",
                    "email": "fabien@symfony.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Loads and dumps YAML files",
            "homepage": "https://symfony.com",
            "support": {
                "source": "https://github.com/symfony/yaml/tree/v5.4.31"
            },
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2023-11-03T14:41:28+00:00"
        },
        {
            "name": "theseer/tokenizer",
            "version": "1.2.2",
            "source": {
                "type": "git",
                "url": "https://github.com/theseer/tokenizer.git",
                "reference": "b2ad5003ca10d4ee50a12da31de12a5774ba6b96"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/theseer/tokenizer/zipball/b2ad5003ca10d4ee50a12da31de12a5774ba6b96",
                "reference": "b2ad5003ca10d4ee50a12da31de12a5774ba6b96",
                "shasum": ""
            },
            "require": {
                "ext-dom": "*",
                "ext-tokenizer": "*",
                "ext-xmlwriter": "*",
                "php": "^7.2 || ^8.0"
            },
            "type": "library",
            "autoload": {
                "classmap": [
                    "src/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Arne Blankerts",
                    "email": "arne@blankerts.de",
                    "role": "Developer"
                }
            ],
            "description": "A small library for converting tokenized PHP source code into XML and potentially other formats",
            "support": {
                "issues": "https://github.com/theseer/tokenizer/issues",
                "source": "https://github.com/theseer/tokenizer/tree/1.2.2"
            },
            "funding": [
                {
                    "url": "https://github.com/theseer",
                    "type": "github"
                }
            ],
            "time": "2023-11-20T00:12:19+00:00"
        }
    ],
    "aliases": [],
    "minimum-stability": "dev",
    "stability-flags": [],
    "prefer-stable": true,
    "prefer-lowest": false,
    "platform": {
        "php": ">=7.4"
    },
    "platform-dev": [],
    "plugin-api-version": "2.3.0"
}