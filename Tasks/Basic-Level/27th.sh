#!/bin/bash

echo -e "Counting lines in db.config - Hardcore Way\n"

filename="db.config"

if [[ -f "$filename" ]]; then
  echo -e "Using 'wc -l' to count lines in $filename:"
  line_count_hardcore=$(wc -l < "$filename")
  echo "$line_count_hardcore lines"
else
  echo "Warning: Predefined file '$filename' not found."
fi

###################################################################################################
#                                             User Input ways                                     #           
###################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Counting lines in a user-specified file - User Input Way\n"

#while true; do
#  read -p "Enter file name (or 'q' to quit): " user_filename
#  if [[ "$user_filename" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -f "$user_filename" ]]; then
#    echo -e "Counting lines in '$user_filename' using wc -l:"
#    line_count_user=$(wc -l < "$user_filename")
#    echo "$line_count_user lines"
#    break # Exit after successful count (you can remove this if you want to count multiple files)
#  else
#    echo "Error: File '$user_filename' not found. Please try again."
#  fi
#done

#echo -e "\nScript finished."
