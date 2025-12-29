setup_file() {
    export BATS_TEST_TIMEOUT=2
}

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

@test No_Error_Must_Occour_When_Executed_Withou_Oprtions {

    "$SCRIPT"
}

@test Help_Message_Must_Be_Valid {
    
    local message="$("$SCRIPT" --help)"

    help_message_is_valid "$message" "$SCRIPT"

} >&3

@test Help_Message_Must_Be_Valid_When_There_is_No_Option {
    
    local message="$("$SCRIPT")"

    help_message_is_valid "$message" "$SCRIPT"

} >&3

@test Script_Must_Fails_When_Receive_Invalid_Option {

    if ! "$SCRIPT" --invalid-argument ; then
        true
    fi > /dev/null 2> /dev/null

    if ! "$SCRIPT" -? ; then
        true
    fi > /dev/null 2> /dev/null
    
} >&3

@test Script_Must_Returns_Valid_Help_Message_When_Receive_Invalid_Option {


    #
    # When receiving an invalid options, must return the 'help message'
    #


    local message="$("$SCRIPT" --invalid-argument 2> /dev/null)" 

    help_message_is_valid "$message" "$SCRIPT"

} >&3


@test Script_Must_Have_Interruption_Trap_Configured {   

    #
    # The 'TRAP' configuration command must exists 
    # in the 'configure' function
    #

    have_trap_configured "$SCRIPT"


} >&3

@test Script_Must_Have_The_Basic_Functions {

    #
    # Must contains the following functions
    #

    exists_function_in_script "$SCRIPT" "main"
    exists_function_in_script "$SCRIPT" "abort"    
    exists_function_in_script "$SCRIPT" "configure"
    exists_function_in_script "$SCRIPT" "help"

} >&3

@test Script_Is_Configured_To_Interrup_On_Error {

    #
    # Must have defined 'set -e' configuration
    #

    grep -P '^set -\K.*e' "$SCRIPT" > /dev/null

} >&3

@test ShellBang_Must_Be_Welldefined {

    #
    # Shellbang must be according to the test
    #

    [[ "$(head -n 1 "$SCRIPT")" == '#!/usr/bin/env bash' ]]

} >&3


@test Options_Must_Be_an_Associative_Array {

    #
    # Options must be declared in the an associative array
    # that must be configured in the 'function' function.
    #

    grep -P '^declare -A options' "$SCRIPT" > /dev/null

    get_configuration_function "$SCRIPT" |\
        grep -E 'options\[.*\]=' > /dev/null

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

function get_configuration_function() {

    local script="$1" 

    local start=0
    local end=0
    local command=""

    start=$(grep -En '^function configure' "$script" | cut -d ':' -f 1)

    end=$(tail -n "+$start" "$script" | grep -n --max-count=1 '^}' | cut -d ':' -f 1)
    end=$(( ($start+$end)-1))
   

    command=$(printf "%d,%d%s" "$start" "$end"  "p" )

    sed -n "$command" "$script"  

}


function  get_function_trap {

    local script="$1" 

    for signal_name in 'SIGABRT' 'SIGINT'; do
   

    get_configuration_function "$script" | 
    grep -E "trap .* $signal_name" | 
    grep -Po 'trap \K\w*' 

    done | sort | uniq

}

function have_trap_configured { 

    local script="$1" 

    for trap_function in $(get_function_trap "$script"); do
        exists_function_in_script "$script" "$trap_function"
    done        

}

 function  exists_function_in_script {
     local script="$1" 
     local function_name="$2" 

     grep -E "function\s+$function_name[\s,\(]" "$script" > /dev/null
     
 }
