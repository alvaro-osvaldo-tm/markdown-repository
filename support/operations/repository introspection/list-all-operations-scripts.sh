#!/usr/bin/env bash

set -e


cd "$(git rev-parse --show-toplevel)"

find \
    support/workflows/ \
    support/operations/ \
    tests/support/ \
    -type f \
    -wholename '**/*.sh' -o -wholename '**/*.Makefile' \