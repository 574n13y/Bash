#!/bin/bash

# Define the greet function
greet() {
  echo "Hi!"
}

# Main script with user input to call the function

while true; do
  echo -e "\nChoose an option:\n"
  echo "1. Call the greet function"
  echo "q. Quit"
  read -p "Enter your choice: " choice

  case "$choice" in
    1)
      greet # Call the greet function
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
