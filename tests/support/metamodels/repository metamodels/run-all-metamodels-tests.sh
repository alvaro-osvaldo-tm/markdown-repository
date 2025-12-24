#!/usr/bin/env bash

set -e

cd "$(git rev-parse --show-toplevel)"

source ./support/infrastructure/bash.inc.sh

bash ./support/operations/repository\ introspection/list-all-operations-scripts.sh --run --only-app | while read -e script ; do
    

    metamodel="$(bash support/operations/file\ introspection/get-file-metamodel.sh "$script")"

    if [[ "$metamodel" == "local.bash.basic/v1" ]]; then

        TEST="tests/support/metamodels/repository metamodels/local.bash.basic.bats"
        SCRIPT="$script"

        info "Script '$script' is being tested."   

        if ! TEST="$TEST" SCRIPT="$script" make bats ; then
            error "Script $script' failed to pass validation."
        fi
        
    else
        error "File '$script' have no metamodel defined."
    fi

done