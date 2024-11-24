#!/bin/bash

# Port scanner script using nc (Netcat)

# Check if the correct number of arguments is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP-ADDRESS>"
  exit 1
fi

ip="$1"

start_port=1
end_port=100

echo "Scanning ports on $ip..."


for port in $(seq $start_port $end_port); do

  nc -z -w1 $ip $port 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "Port $port is open"
  fi
done

echo "Scan completed on $ip."
