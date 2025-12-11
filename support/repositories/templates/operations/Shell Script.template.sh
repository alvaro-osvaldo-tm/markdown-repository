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
    printf "\n"

}

function configure() {

    local arguments
    arguments="$@"

    if [[ "$arguments" == "" ]]; then
        arguments='--help'
    fi

    if ! arguments=$(getopt --long 'help' -o 'h' -n "$(basename "$0")" -- "$arguments")  ; then
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
            -- )
            break
            ;;            
            *)
            ;;            
        esac
     
    done
    
    if [[ "${options[help]}" -eq 1 ]]; then
        help
        exit 0
    fi


    trap INT abort

}

function abort() {
    info "Script aborted"
    exit 255
}

function main() {
    :
}

configure "$@"
main