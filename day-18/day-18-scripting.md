
### Task 1: Basic Functions

#!/bin/bash



greet(){
        echo "Hello, $1!"
}

add(){
        sum=$(( $1 + $2 ))
        echo "Sum: $sum"
}


greet Devops
add 10 110


### Task 2: Functions with Return Values

#!/bin/bash

check_disk(){
        echo "____ Disk Space ____"
        df -h /
}

check_memory(){
        echo "==== Check Memory ===="
        free -h
}

check_disk
check_memory


### Task 3: Strict Mode — `set -euo pipefail`

set -e -> command fail 
set -u -> variable undefined
set -0 pipefail -> pipe fail
=============================

#!/bin/bash

set -euo pipefail

#echo $name
#echo "This line would not execute"


#mkdir /root/test
#echo "this line not execute"

#cat helloosjdbhs.txt | grep hii
echo "This also not execute"

### Task 4: Local Variables


#!/bin/bash


local_func(){
        local message="i am local variable."
        echo "Inside the local function : $message"
}

global_func(){
        msg="i am global variable."
        echo "Inside the global function: $msg"
}

local_func
echo "outside the local function : $message"


global_func
echo "outside the global function: $msg"



### Task 5: Build a Script — System Info Reporter
#!/bin/bash

set -euo pipefail

# Hostname and OS Info
system_info() {

    echo "===== Hostname & OS Info ====="

    hostname

    cat /etc/os-release | grep PRETTY_NAME
}

# Uptime
uptime_info() {

    echo "===== Uptime ====="

    uptime
}

# Disk Usage
disk_usage() {

    echo "===== Top 5 Disk Usage ====="

    du -ah / 2>/dev/null | sort -rh | head -5
}

# Memory Usage
memory_usage() {

    echo "===== Memory Usage ====="

    free -h
}

# CPU Processes
top_processes() {

    echo "===== Top 5 CPU Processes ====="

    ps aux --sort=-%cpu | head -6
}

# Main function
main() {

    system_info

    echo ""

    uptime_info

    echo ""

    disk_usage

    echo ""

    memory_usage

    echo ""

    top_processes
}

# Execute main function
main

