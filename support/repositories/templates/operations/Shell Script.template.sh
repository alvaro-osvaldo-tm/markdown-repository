#!/usr/bin/env bash
#metamodel:local.bash.basic/v1

set -e

declare -A options

options[help]=0

function help() {

    printf "Usage: %s [options]\n" "$(basename "$0")"
    printf "%s\n" "This is a description for the script template"
    printf "Options:\n"    
    printf "  %2.2s, %-16.16s    %s\n" "-h" "--help" "Show this help message"
    printf "  %2.2s, %-16.16s    %s\n" "-h" "--run" "{Run script functionality}"
    printf "\n"

}

function configure() {

    local arguments
    arguments="$@"

    if [[ "$arguments" == "" ]]; then
        arguments='--help'
    fi

    if ! arguments=$(getopt --long 'help,run' -o 'h,r' -n "$(basename "$0")" -- "$arguments")  ; then
        printf "[FATAL] Option not recognised\n"
        help    
        exit 255
    fi
        

    eval set -- "$arguments"

    while true; do

		case "$1" in
            --help | -h)
            options[help]=1
            shift
            continue
            ;;
            --run | -r)
            options[run]=1
            shift
            continue
            ;;            
            -- )
            break
            ;;            
            *)
            ;;            
        esac
     
    done
    
    trap abort SIGABRT
    trap abort SIGINT


    if [[ "${options[run]}" -eq 0 ]]; then
        options[help]=1
    fi    

    if [[ "${options[help]}" -eq 1 ]]; then
        help
        exit 0
    fi


}

function abort() {
    printf "[INFO] Script aborted\n"
    exit 6
}

function main() {
    return 0
}

configure "$@"
main