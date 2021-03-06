#!/usr/bin/env bash

# Use our custom coffee-coverage loader to generate instrumented coffee files
mocha -R spec --compilers coffee:coffee-script/register \
              --require ./tools/coffee-coverage-loader.js \
              spec/all-specs.coffee

# Generate reports for dev and upload to Coveralls, CodeCov
istanbul report text-summary lcov