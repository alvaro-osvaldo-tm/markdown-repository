#!/usr/bin/env bash


set -e


cd "$(git rev-parse --show-toplevel)"

./support/operations/repository\ introspection/list-all-operations-scripts.sh | grep -E '.sh$' | while read -e script ; do

    metamodel="$(bash support/operations/file\ introspection/get-file-metamodel.sh "$script")"


    if [[ "$metamodel" == "local.bash.basic/v1" ]]; then
        bats tests/support/metamodels/repository\ metamodels/local.bash.basic.bats
    else
        printf "[ERROR] No metamodel was defined for '%s'\n" "$script"
    fi



done