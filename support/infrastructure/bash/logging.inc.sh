function fatal() {

    local message="$1"
    local code=$2
    
    setterm --foreground red --bold on
    printf "%-8.8s"  "[FATAL]"

    setterm --default
    printf "%s\n" "$message"
    
    exit "${code:=255}" 

} > /dev/stderr


function error() {

    local message="$1"
    local code=$2
    
    setterm --foreground red --bold on --blink on
    printf "%-8.8s" "[ERROR]"

    setterm --default
    printf "%s\n" "$message"
    

} > /dev/stderr


function info() {
    local message="$1"
    local code=$2
    
    setterm --foreground white --bold on
    printf "%-8.8s" "[INFO]"

    setterm --default
    printf "%s\n" "$message"
    
} 
