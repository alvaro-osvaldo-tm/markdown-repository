setup() {

    source tests/infrastructure/bats.inc.sh

    validate_file "$SCRIPT"
    
}

function validate_file() {

    local file="$1"
    local metamodel="$(bash support/operations/file\ introspection/get-file-metamodel.sh "$file")"

    if [[ "$file" == '' ]]; then
        fatal "The script path was not defined."
    elif [[ ! -f "$file" ]]; then
        fatal "The path '$file' is not a file"
    elif [[ ! -r "$file" ]]; then    
        fatal "The file '$file' is not readable"
    fi
   


}

@test Have_a_Compatible_Metamodel {
    
    local metamodel="$(bash support/operations/file\ introspection/get-file-metamodel.sh "$SCRIPT")"

    if [[ "$metamodel" == '' ]]; then
        fatal "File '$file' not defines a metamodel. "
    elif [[ "$metamodel" != 'local.bash.basic/v1' ]]; then
        fatal "File '$file' as an incompatible metamodel. received '$metamodel', expected 'local.bash.basic/v1'  . "
    fi    

}