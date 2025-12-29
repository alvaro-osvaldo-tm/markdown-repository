#!/usr/bin/env bash

set -e
source ./support/infrastructure/bash.inc.sh

function move_to_git_root_directory() {
    cd "$(git rev-parse --show-toplevel)"
}

function list_all_scripts_for_testing() {
    bash ./support/operations/repository\ introspection/list-all-operations-scripts.sh --run --only-app
}

function have_script_defined_metamodel() {
    local metamodel="$1"
    [[ ! -z "$metamodel" ]]
}

function is_metamodel_supported() {
    local metamodel="$1"
    [[ "$metamodel" == "local.bash.basic/v1" ]]
}

function get_script_metamodel() {    
    local script="$1"
    bash support/operations/file\ introspection/get-file-metamodel.sh "$script"
}


function get_test_for_metamodel() {

    local metamodel="$1"
    local test=""

    if [[ "$metamodel" == "local.bash.basic/v1" ]];  then
        test="tests/support/metamodels/repository metamodels/local.bash.basic.bats"
    fi        

    printf "%s" "$test"

}

function execute_bats() {

    local script="$1"
    local metamodel="$2"
    local test="$3"
    local timeout=5
    local wait_for_kill=2

    TEST="$test" SCRIPT="$script" make bats > /dev/null 2> /dev/null     

}

function execute_test_for_script() {

    local script="$1"
    local metamodel="$2"
    local test=""

    test="$(get_test_for_metamodel)"

    TEST="$test" SCRIPT="$script" make --silent bats > /dev/null 2> /dev/null 
}

function report_error_for_script() {

    local script="$1"
    local metamodel="$2"
    local test=""

    test="$(get_test_for_metamodel)"

    TEST="$test" SCRIPT="$script" make bats || true
}

function main() {

    list_all_scripts_for_testing |  while read -e script ; do

        metamodel="$(get_script_metamodel "$script")"

        if ! have_script_defined_metamodel "$metamodel" ; then

            error "Script '$script' have no metamodel defined."
            continue        

        elif ! is_metamodel_supported "$metamodel"; then

            error "Script '$script' have unknow metamodel. metamodel='$metamodel'."
            continue

        elif ! execute_test_for_script "$script" "$metamodel" ; then

            error "Script $script' failed to pass validation." 
            report_error_for_script "$script" "$metamodel"
            continue

        fi 

        success "Script '$script' passed."   

    done

}

main
