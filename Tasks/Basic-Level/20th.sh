#!/bin/bash

# Approach ( specific directory removal hardcore)
echo -e " removal of a Directory :\nUse: rm -rf directory_name\n"
FILE_TO_REMOVE="backup_script" 
mkdir -p "$DIR_TO_REMOVE"       
if [ -d "$DIR_TO_REMOVE" ]; then
  echo "Attempting to remove '$DIR_TO_REMOVE'..."
  rm -rf "$DIR_TO_REMOVE"
  if [ $? -eq 0 ]; then
    echo "'$DIR_TO_REMOVE' has been removed."
    echo "Verifying removal:"
    ls -lrth | grep "$DIR_TO_REMOVE" || echo "Directory '$DIR_TO_REMOVE' not found."
  else
    echo "Error occurred while removing '$DIR_TO_REMOVE'."
  fi
else
  echo "Directory '$DIR_TO_REMOVE' does not exist."
fi

echo -e "\n--------------------\n"

# Approach  (Taking user input for Directory removal)
echo -e "Enter Directory(s) to remove (separated by spaces):"
read -r dirs_to_remove

if [ -n "$dirs_to_remove" ]; then
  echo -e "\nAttempting to remove: $dirs_to_remove"
  rm -rf $dirs_to_remove
  echo -e "Verification:"
  for dir in $dirs_to_remove; do
    ls -lrth | grep "$dir" || echo "'$dir' not found."
  done
else
  echo -e "No directorys specified for removal."
fi
