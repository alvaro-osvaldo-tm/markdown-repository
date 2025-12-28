setup_file() {
    export BATS_TEST_TIMEOUT=4
}


@test "Bash Infrastructure Can be Loaded" {
    
    (
        source support/infrastructure/bash.inc.sh
    )
}

@test "Capability: Can limit the script execution time with minimal parameters" {   
    
    (
        source support/infrastructure/bash.inc.sh
        limit_execution_time --monitor --verbose --do-not-run |\
        shows_expected_limitation_message |\
        was_limited_for_expected_time 2
    )

}

@test "Capability: Can limit the script execution time with timer" {
    
    (
        source support/infrastructure/bash.inc.sh
        limit_execution_time --monitor --timer 40 --verbose --do-not-run |\
            shows_expected_limitation_message |\
            was_limited_for_expected_time 40 
    )

} >&3

@test "Capability: Can install monitor and finish correctly" {
   
   run tests/infrastructure/bash-infrastructure-unit-test-timer.sh test-monitor
   [[ "$status" -eq 6 ]]
  
} >&3

@test "Capability: Can install monitor and cleanup" {   
    tests/infrastructure/bash-infrastructure-unit-test-timer.sh test-cleanup    
} >&3


function shows_expected_limitation_message() {


    while read -e line; do
    
        if ! printf "%s\n"  "$line" | grep  -E  "Script pid '[0-9]+' , was limited to run for '[0-9]+' seconds"; then
            continue
        fi > /dev/null

        return 0

    done

    return 1
}

function was_limited_for_expected_time() {

    local timer="$1"

    while read -e line; do

        if ! printf "%s\n"  "$line" | grep  -E  "Script pid '[0-9]+' , was limited to run for '$timer' seconds"; then
            continue
        fi > /dev/null

        return 0

    done    

}
function show_output() {
    while read -e line; do
        printf "%s\n"  "$line"
    done
}

