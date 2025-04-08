#!/bin/bash

# Script to back up all .conf files in a directory to a backup subdirectory

backup_dir="backup"

# Create the backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
  mkdir "$backup_dir"
  echo "Created backup directory: $backup_dir"
fi

# Find and back up .conf files
find . -maxdepth 1 -type f -name "*.conf" -print0 | while IFS= read -r -d $'\0' conf_file; do
  # Get the filename without the path
  conf_filename=$(basename "$conf_file")

  # Create the backup path
  backup_path="$backup_dir/$conf_filename"

  # Copy the file
  cp "$conf_file" "$backup_path"

  echo "Backed up: $conf_file to $backup_path"
done

echo "Backup process completed."
