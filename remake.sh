#!/usr/bin/env bash
set -e # all commands must pass

SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

cd "$SCRIPTPATH"
rm -rf ./web/modules/contrib
drush make --no-core --concurrency=3 --no-recursion ./src/drupal_modules.make.yml ./web
composer install --prefer-dist --no-interaction
