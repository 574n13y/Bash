#!/bin/bash

echo -e "Script to manage and execute my_script.sh.\n"

# Function to create my_script.sh
create_my_script() {
  echo '#!/bin/bash' > my_script.sh
  echo 'echo "Script executed!"' >> my_script.sh
  echo "my_script.sh created."
}

# Function to make my_script.sh executable
make_executable() {
  chmod +x my_script.sh
  echo "my_script.sh made executable."
}


# Main script logic
while true; do
  echo -e "\nChoose an option:\n"
  echo "1. Create my_script.sh"
  echo "2. Make my_script.sh executable"
  echo "q. Quit"
  read -p "Enter your choice: " choice

  case "$choice" in
    1)
      create_my_script
      ;;
    2)
      make_executable
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
