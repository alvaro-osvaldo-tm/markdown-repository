#!/usr/bin/env bash
# metamodel:local.bash.basic/v1

set -e

declare -A options

options[help]=0
options[only-bash-app]=0
options[filter]=''

function help() {

    printf "Usage: %s [options]\n" "$(basename "$0")"
    printf "%s\n" "List all support operational scripts."
    printf "Options:\n"    
    printf "  %2.2s, %-16.16s    %s\n" "-h" "--help" "Show this help message"
    printf "  %2.2s, %-16.16s    %s\n" "-r" "--run" "Run script functionality"
    printf "  %2.2s, %-16.16s    %s\n" "-b" "--only-bash-app" "Report only bash applications"
    printf "\n"

}

function configure() {

    local arguments
    arguments="$@"

    if [[ "$arguments" == "" ]]; then
        arguments='--help'
    fi

    if ! arguments=$(getopt --long 'help,run,only-bash-app' -o 'h,r,b' -n "$(basename "$0")" -- $arguments)  ; then
        printf "[FATAL] Option no recognized\n"
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
            --only-bash-app | -b )
                options[only-bash-app]=1
                shift
                continue
            ;;
            -- )
                break
            ;;            
            *)
                break
            ;;            
        esac
     
    done

    if [[ "${options[run]}" -eq 0 ]]; then
        options[help]=1
    fi
    
    if [[ "${options[help]}" -eq 1 ]]; then
        help
        exit 0
    fi


    trap abort SIGABRT

}

function abort() {
    info "Script aborted"
    exit 6
}


function move_to_git_root_directory() {
    cd "$(git rev-parse --show-toplevel)"    
}

function list_all_operational_scripts() {

    find \
        support \
        tests \
        -type f \
        -wholename '**/*.sh' -o -wholename '**/*.Makefile'

}

function filter_list_according_to_options() {

    if [[ "${options[only-bash-app]}" -eq 1  ]]; then

        grep -E '^.*\.sh$' | grep -v '\.inc\.sh'
        
    else
        cat
    fi
}


function main() {
    
    move_to_git_root_directory

    list_all_operational_scripts |
    filter_list_according_to_options

     
}

configure "$@"
main
