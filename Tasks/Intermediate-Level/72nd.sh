#!/bin/bash

# Find files modified in a user-specified time and directory

echo "Script to find files modified within a specified time range."

read -p "Enter the directory to search: " search_dir

# Validate directory
if [ ! -d "$search_dir" ]; then
  echo "Error: Directory '$search_dir' not found or is not a directory."
  exit 1
fi

read -p "Enter the time range (e.g., 24h, 1d, 120m): " time_range

# Validate time range (basic check - could be improved)
if ! [[ "$time_range" =~ ^[0-9]+[hmd]$ ]]; then
  echo "Error: Invalid time range format. Use numbers followed by h, m, or d (e.g., 24h, 1d, 120m)."
  exit 1
fi

time_unit="${time_range: -1}"  # Get the last character (h, m, or d)
time_value="${time_range%?}"   # Remove the last character (the unit)

echo "Finding files in '$search_dir' modified within the last $time_range:"

case "$time_unit" in
  h)
    time_in_minutes=$((time_value * 60))
    find "$search_dir" -type f -mmin "-$time_in_minutes"
    ;;
  m)
    find "$search_dir" -type f -mmin "-$time_value"
    ;;
  d)
    find "$search_dir" -type f -mtime "-$time_value"
    ;;
  *)
    echo "Error: Invalid time unit (should be h, m, or d)."
    exit 1
esac

echo "Done."
