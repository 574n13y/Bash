#!/bin/bash

# Approach ( specific file removal)
echo -e "Demonstrating removal of a specific file:\nUse: rm filename\n"
FILE_TO_REMOVE="Sever.log" 
touch "$FILE_TO_REMOVE"       
if [ -f "$FILE_TO_REMOVE" ]; then
  echo "Attempting to remove '$FILE_TO_REMOVE'..."
  rm "$FILE_TO_REMOVE"
  if [ $? -eq 0 ]; then
    echo "'$FILE_TO_REMOVE' has been removed."
    echo "Verifying removal:"
    ls -lrth | grep "$FILE_TO_REMOVE" || echo "'$FILE_TO_REMOVE' not found."
  else
    echo "Error occurred while removing '$FILE_TO_REMOVE'."
  fi
else
  echo "File '$FILE_TO_REMOVE' does not exist."
fi

echo -e "\n--------------------\n"

###############################################################################################
# Approach  (Taking user input for file removal)
#echo -e "Enter file(s) to remove (separated by spaces):"
#read -r files_to_remove

#if [ -n "$files_to_remove" ]; then
#  echo -e "\nAttempting to remove: $files_to_remove"
#  rm $files_to_remove
#  echo -e "Verification:"
#  for file in $files_to_remove; do
#    ls -lrth | grep "$file" || echo "'$file' not found."
#  done
#else
#  echo -e "No files specified for removal."
#fi
###############################################################################################
