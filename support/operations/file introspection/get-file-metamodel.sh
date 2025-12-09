#!/usr/bin/env bash

set -e

#
# Return the file metamodel or a error if failed
#

function fatal() { 

    local message="$1"

    printf "[FATAL] %s" "$message"

}

function configure() {

export file="$1"


if [[ ! -f "$file" ]]; then
    fatal "The path '$file'  is not a file"
elif [[ ! -r "$file" ]]; then
    fatal "The file '$file' is not readble"
fi

}

function main() {

    head -n 5 "$file" | grep 'metamodel:' | cut -d ':' -f 2

}


configure "$1"
main 