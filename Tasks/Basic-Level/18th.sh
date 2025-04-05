#!/bin/bash

echo -e "Rename file name \n use mv old_file newfile \n "
mv app.config  db.config
echo -e "view new file name \n ls -lrth | grep newfile \n "
ls -lrth | grep "db.config"



#########################################################################
#echo -e "Rename file name \n Use: mv old_file new_file \n "

#OLD_FILENAME="app.config"
#NEW_FILENAME="db.config"

#if [ -f "$OLD_FILENAME" ]; then
#  echo -e "Renaming '$OLD_FILENAME' to '$NEW_FILENAME'...\n"
#  mv "$OLD_FILENAME" "$NEW_FILENAME"
#  if [ $? -eq 0 ]; then
#    echo -e "File '$OLD_FILENAME' has been successfully renamed to '$NEW_FILENAME'.\n"
#    echo -e "Verifying the new file name:\n"
#    ls -lrth | grep "$NEW_FILENAME"
#  else
#    echo -e "Error occurred while renaming the file.\n"
#  fi
#else
#  echo -e "Error: File '$OLD_FILENAME' does not exist.\n"
#fi
##########################################################################################
