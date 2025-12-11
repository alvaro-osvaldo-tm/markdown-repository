#!/usr/bin/env bash

set -e


cd "$(git rev-parse --show-toplevel)"

find \
    support \
    tests \
    -type f \
    -wholename '**/*.sh' -o -wholename '**/*.Makefile' \