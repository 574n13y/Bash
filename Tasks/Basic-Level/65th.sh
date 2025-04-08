#!/bin/bash

# Script to prompt for confirmation before deleting a file

read -p "Enter the name of the file to delete: " file_to_delete

if [ ! -f "$file_to_delete" ]; then
  echo "Error: File '$file_to_delete' not found."
  exit 1
fi

read -p "Are you sure you want to delete '$file_to_delete'? (y/n): " confirmation

if [[ "$confirmation" == "y" || "$confirmation" == "Y" ]]; then
  rm "$file_to_delete"
  echo "File '$file_to_delete' deleted."
else
  echo "Deletion cancelled."
fi

echo "Script finished."
