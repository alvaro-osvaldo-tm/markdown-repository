function fatal() {


    local message="$1"
    local code=$2
    
    setterm --foreground red --bold on
    printf "[FATAL] "

    setterm --default
    printf "%s\n" "$message"
    
    exit "${code:=255}" 

} > /dev/stderr

function info() {
    local message="$1"
    local code=$2
    
    setterm --foreground white --bold on
    printf "[INFO] "

    setterm --default
    printf "%s\n" "$message"
    
} 
