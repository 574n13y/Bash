#!/bin/bash

echo -e "Searching for 'error' in server.log - Hardcore Way\n"

filename="server.log"

if [[ -f "$filename" ]]; then
  echo -e "Using 'grep' to find lines containing 'error' in $filename:"
  cat "$filename" | grep "error"
else
  echo "Warning: Predefined file '$filename' not found."
fi

###################################################################################################
# User Input ways
##################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Searching for 'error' in a user-specified file - User Input Way\n"

#while true; do
#  read -p "Enter file name (or 'q' to quit): " user_filename
#  if [[ "$user_filename" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -f "$user_filename" ]]; then
#    echo -e "Searching for 'error' in '$user_filename':"
#    cat "$user_filename" | grep "error"
#    break # Exit after successful search (you can remove this if you want to search multiple files)
#  else
#    echo "Error: File '$user_filename' not found. Please try again."
#  fi
#done

#echo -e "\nScript finished."
