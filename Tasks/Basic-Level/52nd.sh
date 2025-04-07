#!/bin/bash

# Define the check_file function
check_file() {
  local filename="$1"  # Get the filename from the first argument

  if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
  else
    echo "The file '$filename' does not exist."
  fi
}

# Main script with user input to call the function

while true; do
  echo -e "\nChoose an option:\n"
  echo "1. Check if my_file.txt exists"
  echo "q. Quit"
  read -p "Enter your choice: " choice

  case "$choice" in
    1)
      check_file "my_file.txt"  # Call the function with "my_file.txt"
      ;;
    q)
      echo "Exiting."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done

echo -e "\nScript finished.\n"
