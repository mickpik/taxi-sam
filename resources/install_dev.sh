#!/usr/bin/env bash

composer install
npm install
npm install -g bower
bower install
grunt init
grunt build
php bin/console assets:install --symlink
php bin/console cache:clear --env=dev --no-warmup
