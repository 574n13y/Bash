#!/bin/bash

echo -e "Hardcore way "
filename="server.log"
echo -e "Display the Content of $filename Page by Page \n Use: less or more \n "
echo -e

if [[ -f "$filename" ]]; then
  echo -e "Using 'less' to display $filename (page by page):"
  less "$filename"
else
  echo "Warning: Predefined file '$filename' not found."
fi

######################################################################################################
#User Intut way
######################################################################################################

#echo -e "\n#####################################################################\n"
#echo -e "User Input Way "

#while true; do
#  read -p "Enter file name (or 'q' to quit): " user_filename
#  if [[ "$user_filename" == "q" ]]; then
#    echo "Exiting."
#    exit 0
#  fi

#  if [[ -f "$user_filename" ]]; then
#    echo -e "Choose pager: (l)ess or (m)ore"
#    read -p "Enter your choice: " pager_choice

#    case "$pager_choice" in
#      l|less)
#        echo -e "Using 'less' to display $user_filename (page by page):"
#        less "$user_filename"
#        break # Exit after successful viewing
#        ;;
#      m|more)
#        echo -e "Using 'more' to display $user_filename (page by page):"
#        more "$user_filename"
#        break # Exit after successful viewing
#        ;;
#      *)
#        echo "Invalid choice. Please enter 'l' or 'm'."
#    esac
#  else
#    echo "Error: File '$user_filename' not found. Please try again."
#  fi
#done

#echo -e "\nScript finished."
