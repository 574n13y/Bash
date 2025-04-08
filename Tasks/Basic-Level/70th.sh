#!/bin/bash

# Script to create a user account (requires sudo)

# Prompt for the username
read -p "Enter the username to create: " new_username

# Validate the username (basic check, you might want more complex validation)
if ! [[ "$new_username" =~ ^[a-z][a-z0-9_-]{0,31}$ ]]; then
  echo "Error: Invalid username. Must start with a lowercase letter, and can include lowercase letters, numbers, underscores, and hyphens (max 32 characters)."
  exit 1
fi

# Prompt for the user's full name (optional)
read -p "Enter the user's full name (optional, press Enter to skip): " full_name

# Prompt for the password
read -s -p "Enter the password for $new_username: " new_password
echo  # Add a newline after the password prompt (since -s suppresses it)

# Prompt to confirm the password
read -s -p "Confirm the password for $new_username: " confirm_password
echo

# Verify that the passwords match
if [ "$new_password" != "$confirm_password" ]; then
  echo "Error: Passwords do not match."
  exit 1
fi

# Create the user account with useradd
sudo useradd -m "$new_username"

# Set the password with chpasswd
sudo echo "$new_username:$new_password" | chpasswd

# Set the full name (if provided)
if [ -n "$full_name" ]; then
  sudo chfn -f "$full_name" "$new_username"
fi

echo "User '$new_username' created successfully."
