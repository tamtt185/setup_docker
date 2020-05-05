#!/bin/bash

set -e

bundle check || bundle install --binstubs="$BUNDLE_BIN"
bundle exec sidekiq

exec "$@"