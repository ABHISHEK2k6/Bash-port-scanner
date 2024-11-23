#!/bin/bash

# Port scanner script using nc (Netcat)

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <IP_ADDRESS> <START_PORT> <END_PORT>"
  exit 1
fi

IP_ADDRESS=$1
START_PORT=$2
END_PORT=$3

echo "Scanning ports from $START_PORT to $END_PORT on $IP_ADDRESS..."

for (( port=$START_PORT; port<=$END_PORT; port++ )); do
  # Use nc to check if the port is open
  nc -z -v -w 1 $IP_ADDRESS $port 2>&1 | grep -q 'succeeded' && \
  echo "Port $port is open"
done

echo "Scan complete."
