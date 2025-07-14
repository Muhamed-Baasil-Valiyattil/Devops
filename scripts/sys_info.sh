
#!/bin/bash

source /etc/os-release
echo "OS : $PRETTY_NAME"
echo "Kernel : $(uname -r )"
echo "CPU : $(lscpu | grep "Model name" | cut -d: -f2 | xargs)"
echo "Memory : $(free -h | awk '/Mem:/ {print $4 "free / " $2 " total"}')"
