#!/bin/bash

# Script to monitor disk space and print a warning if it's below a threshold

# Configuration
mount_point="/"          # Mount point to monitor (e.g., /, /home)
threshold_percentage=90   # Disk usage threshold (e.g., 90%)
check_interval_seconds=60 # Interval to check disk space (e.g., 60 seconds)

# Function to check disk space
check_disk_space() {
  # Get total and available disk space in kilobytes
  total_kb=$(df -k "$mount_point" | tail -n 1 | awk '{print $2}')
  available_kb=$(df -k "$mount_point" | tail -n 1 | awk '{print $4}')

  # Calculate used space and usage percentage
  used_kb=$((total_kb - available_kb))
  usage_percentage=$((used_kb * 100 / total_kb))

  # Print current usage
  echo "Disk usage on $mount_point: $usage_percentage%"

  # Check if usage exceeds the threshold
  if (( usage_percentage >= threshold_percentage )); then
    echo "WARNING: Disk space on $mount_point is above $threshold_percentage% ($usage_percentage%)."
    # You can add actions here, such as:
    # - Sending an email alert
    # - Logging the event
    # - Trying to free up space
  fi
}

# Main loop to monitor disk space
while true; do
  check_disk_space
  sleep "$check_interval_seconds"
done
