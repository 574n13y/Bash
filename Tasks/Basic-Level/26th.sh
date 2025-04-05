#!/bin/bash

###################################################################################################
#                               Using grep Hardcore                                               #                                                                                         ###################################################################################################

#echo -e "Searching for lines containing 'INFO' (case-insensitive) in app.config - Hardcore Way\n"

#filename="app.config"

#if [[ -f "$filename" ]]; then
#  echo -e "Using 'grep -i' to find lines containing 'INFO' (case-insensitive) in $filename:"
#  grep -i "INFO" "$filename"
#else
#  echo "Warning: Predefined file '$filename' not found."
#fi

###################################################################################################
#                                Using awk Hardcore                                               #
###################################################################################################
echo -e "Searching for lines containing 'INFO' (case-insensitive) in app.config - Hardcore Way (awk)\n"                                                                                                                                                                                                                                                                                 filename="app.config"                                                                                                                                                                                                                                                                                                                                                                   if [[ -f "$filename" ]]; then
  echo -e "Using 'awk' to find lines containing 'INFO' (case-insensitive) in $filename:"
  awk 'tolower($0) ~ /info/' "$filename"
else                                                                                                                                                                                          echo "Warning: Predefined file '$filename' not found."
fi


###################################################################################################
#                                Using grep user Input                                            #                                                                                         ###################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Searching for lines containing 'INFO' (case-insensitive) in a user-specified file - User Input Way\n"

#while true; do
#  read -p "Enter file name (or 'q' to quit): " user_filename
#  if [[ "$user_filename" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -f "$user_filename" ]]; then
#    echo -e "Searching for lines containing 'INFO' (case-insensitive) in '$user_filename':"
#    grep -i "INFO" "$user_filename"
#    break # Exit after successful search (you can remove this if you want to search multiple files)
#  else
#    echo "Error: File '$user_filename' not found. Please try again."
#  fi
#done

#echo -e "\nScript finished."

###################################################################################################
#                                  Using awk user Input                                           #                                                                                         ###################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "Searching for lines containing 'INFO' (case-insensitive) in a user-specified file - User Input Way (awk)\n"

#while true; do
#  read -p "Enter file name (or 'q' to quit): " user_filename
#  if [[ "$user_filename" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -f "$user_filename" ]]; then
#    echo -e "Searching for lines containing 'INFO' (case-insensitive) in '$user_filename' using awk:"
#    awk 'tolower($0) ~ /info/' "$user_filename"
#    break # Exit after successful search (you can remove this if you want to search multiple files)
#  else
#    echo "Error: File '$user_filename' not found. Please try again."
#  fi
#done

#echo -e "\nScript finished."

########################################################################################################################################################################################################################################################################################################################################################################################

