#!/bin/bash

echo -e "Waiting for a file to be created - User Input\n"

while true; do
  read -p "Enter the name of the file to wait for (or 'q' to quit): " file_to_watch
  if [[ "$file_to_watch" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [[ -n "$file_to_watch" ]]; then  # Check if a filename was entered
    read -p "Enter the interval (in seconds) to check for the file (default: 5): " check_interval
    check_interval="${check_interval:-5}" # Use default if no input

    if [[ "$check_interval" =~ ^[0-9]+$ ]]; then # Validate interval
      echo "Waiting for file '$file_to_watch' to be created. Checking every $check_interval seconds..."

      until [ -f "$file_to_watch" ]; do
        echo "File '$file_to_watch' does not exist yet. Checking again..."
        sleep "$check_interval"
      done

      echo "File '$file_to_watch' has been created. Continuing."

      # Add the commands you want to execute after the file is created
      echo "Performing actions..."
      # Example:
      # cat "$file_to_watch"
      # some_other_command
      echo "Actions completed."
      break # Exit the loop after successful file wait
    else
      echo "Invalid interval. Please enter a number."
    fi
  else
    echo "Please enter a valid file name."
  fi
done

echo -e "\nScript finished."
