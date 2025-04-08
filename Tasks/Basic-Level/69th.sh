#!/bin/bash

# Script to ping a list of IP addresses and report their reachability

ip_list=("8.8.8.8" "192.168.1.1" "10.0.0.1" "1.1.1.1") # List of IP addresses to ping

echo "Pinging the following IP addresses:"
for ip in "${ip_list[@]}"; do
  echo "$ip"
done

echo -e "\n--- Pinging IPs ---\n"

for ip in "${ip_list[@]}"; do
  echo -n "Pinging $ip... "  # -n suppresses the newline

  # Use ping -c 1 to send only one ping packet
  ping -c 1 -W 1 "$ip" > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    echo "Reachable"
  else
    echo "Unreachable"
  fi
done

echo -e "\n--- Ping test completed ---\n"
