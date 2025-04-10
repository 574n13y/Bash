#!/bin/bash

log_dir="/var/log"
size_threshold="+1M"

echo "Files in $log_dir larger than 1MB:"

find "$log_dir" -type f -size "$size_threshold"

echo "Done."
