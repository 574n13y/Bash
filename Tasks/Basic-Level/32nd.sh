#!/bin/bash

echo -e "Please enter the server name:\n"
read server_name

if [ -n "$server_name" ]; then
  echo -e "\nAttempting to connect to server: $server_name from IND, (as of April 6, 2025).\n"
else
  echo -e "\nNo server name was entered.\n"
fi


