#!/bin/bash

#log_dir="/var/log"
#size_threshold="+1M"

#echo "Files in $log_dir larger than 1MB:"

#find "$log_dir" -type f -size "$size_threshold"

#echo "Done."


########User Input ##########

echo "Script to find files larger than a specified size."

read -p "Enter Directory name: " log_dir
read -p "Enter Size (e.g., +1M, +10k): " size_thr

# Validate Directory
if [ ! -d "$log_dir" ]; then
    echo "Error: Directory '$log_dir' not found or is not a directory."
    exit 1
fi

# Basic Size Validation (Empty Check) - More robust validation is complex
if [ -z "$size_thr" ]; then
    echo "Error: Please enter a size threshold."
    exit 1
fi

echo "Finding files in '$log_dir' larger than '$size_thr':"

find "$log_dir" -type f -size "$size_thr"

echo "Done."
