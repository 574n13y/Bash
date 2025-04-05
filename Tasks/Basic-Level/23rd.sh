#!/bin/bash


##############################################################################################################
# Hardcore Way
##############################################################################################################
echo -e "--- Predefined File ---"
hardcoded_file="server.log" # You can change this to your desired default file

if [[ -f "$hardcoded_file" ]]; then
    echo -e "Displaying Last 5 lines of the predefined file: '$hardcoded_file'"
    tail -n 5 "$hardcoded_file"
else
    echo "Warning: Predefined file '$hardcoded_file' not found."
fi

##############################################################################################################
# User Input
##############################################################################################################
#echo -e "\n--- User Input Section ---"

#while true; do
#    read -p "Enter file name (or 'q' to quit): " user_file
#    if [[ "$user_file" == "q" ]]; then
#        echo "Exiting."
#        exit 0
#    fi

#    if [[ -f "$user_file" ]]; then
#        read -p "Enter the number of lines to display (default: 5): " num_lines
#        num_lines="${num_lines:-5}"

#        if [[ "$num_lines" =~ ^[0-9]+$ ]]; then
#            echo -e "\nThe Last $num_lines lines of $user_file are:"
#            tail -n "$num_lines" "$user_file"
#            break # Exit the user input loop after successful execution
#        else
#            echo "Invalid number of lines. Please enter a number."
#        fi
#    else
#        echo "Error: File '$user_file' not found. Please try again."
#    fi
#done

#echo -e "\nScript finished."

#############################################################################################################
