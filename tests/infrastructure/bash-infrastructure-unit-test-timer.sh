#!/usr/bin/env bash

set -e

source "support/infrastructure/bash.inc.sh"

function confirmation() {
    printf "Finished\n"
    exit 6
}


function failed() {
    printf "Failed\n"
    exit 255
}


function clear_monitor() {

    local pid_control="$1"
    
    limit_execution_time --clear "$pid_control"

    if [[ "$(ps -o pid= -p "$pid_control" | wc -l)" -ne 0 ]]; then
        return 128
    fi

    return 0

}

function wait_to_be_finished() {

    local count=0
   
    while true; do

        count=$((count+1))
        printf "Loop %d\n" "$count"
        sleep 1

        if [[ "$count" == 4 ]]; then
            failed
        fi

    done

}

function configure() {

    command="$1"
    timer=2

    trap confirmation ALRM

    if [[ -z "$command" ]]; then
        command='test-monitor'
    fi


}

function main() {   

    pid_control="$(limit_execution_time --monitor=$$ --timer="$timer")"

    case "$command" in

        'test-monitor')
            wait_to_be_finished 
            exit $?
            ;;
        'test-cleanup')
            clear_monitor "$pid_control"
            exit $?
            ;;
        *)
            printf "[FATAL] Unknow command '%s'" "$command" 
            exit 1

        ;;
    esac

    exit 1
    
}


configure "$@"
main 
