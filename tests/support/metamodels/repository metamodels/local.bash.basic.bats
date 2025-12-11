setup() {

    source "$(git rev-parse --show-toplevel)/tests/infrastructure/bats.inc.sh"   

    if was_test_started; then
        return 0
    fi

    validate_file "$SCRIPT"

    set_test_as_started
    
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

@test Help_Message_is_Valid {
    
    local message="$("$SCRIPT" --help)"

    help_message_is_valid "$message" "$SCRIPT"

} >&3

@test Help_Message_is_Valid_When_There_is_No_Option {
    
    local message="$("$SCRIPT")"

    help_message_is_valid "$message" "$SCRIPT"

} >&3

@test Script_Fails_When_Receive_Invalid_Option {

    if ! "$SCRIPT" --invalid-argument ; then
        true
    fi > /dev/null 2> /dev/null

    if ! "$SCRIPT" -? ; then
        true
    fi > /dev/null 2> /dev/null
    
} >&3

@test Script_Returns_Valid_Help_Message_When_Receive_Invalid_Option {

    local message="$("$SCRIPT" --invalid-argument 2> /dev/null)" 

    help_message_is_valid "$message" "$SCRIPT"

} >&3


function help_message_is_valid() {

    local message="$1"
    local file="$2"


    is_not_a_blank_message "$message"

    help_message_have_the_first_line_as_expected "$message" "$file"
    help_message_have_options_section "$message"


}

function is_not_a_blank_message() {

    local message="$1"

    [[ ! "$message" == "" ]]

}

function help_message_have_the_first_line_as_expected() {

    local message="$1"
    local file="$2"

    local line="$(printf "%s" "$message" | head -n 1)"
    local filename="$(basename "$file")"


    printf  "%s\n" "$message" | grep -E "^Usage: $filename \[options\]" > /dev/null 

}

function help_message_have_options_section() {

    local message="$1"

    printf  "%s\n" "$message" | grep -E "^Options:" > /dev/null 

}