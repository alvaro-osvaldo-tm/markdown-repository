#!/usr/bin/env bash

set -e

cd "$(git rev-parse --show-toplevel)"

bash ./support/operations/repository\ introspection/list-all-operations-scripts.sh | grep -E '.sh$' | while read -e script ; do

    metamodel="$(bash support/operations/file\ introspection/get-file-metamodel.sh "$script")"

    if [[ "$metamodel" == "local.bash.basic/v1" ]]; then

        TEST="tests/support/metamodels/repository metamodels/local.bash.basic.bats"
        SCRIPT="$script"

        if ! TEST="$TEST" SCRIPT="$script" make bats ; then
            printf "[ERROR] Script '%s' failed to pass validation.\n" "$script"
        fi
        
    else
        printf "[ERROR] File '%s' have no metamodel defined\n" "$script"
    fi



done