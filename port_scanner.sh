#!/bin/bash

# Basic Port Scanning Tool in Bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <hostname or IP> <start_port> <end_port>"
    exit 1
fi

host=$1
start_port=$2
end_port=$3

echo "Starting port scan on $host from port $start_port to $end_port..."

for ((port=$start_port; port<=$end_port; port++))
do
    (echo >/dev/tcp/$host/$port) &>/dev/null && echo "Port $port is open"
done

echo "Port scan completed."

# Usage: ./port_scanner.sh <hostname or IP> <start_port> <end_port>