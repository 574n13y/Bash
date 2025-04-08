#!/bin/bash

# Script to check the status of a web server using curl (with user input)

while true; do
  read -p "Enter the web URL to check (or 'q' to quit): " web_url

  if [[ "$web_url" == "q" ]]; then
    echo "Exiting."
    exit 0
  fi

  if [[ -n "$web_url" ]]; then  # Check if a URL was entered
    # Add http:// if it's missing (a basic check)
    if ! [[ "$web_url" =~ ^(http://|https://) ]]; then
      web_url="http://$web_url"
    fi

    # Use curl to get the HTTP status code
    status_code=$(curl -s -o /dev/null -w "%{http_code}" "$web_url")

    if [[ -n "$status_code" ]]; then # Check if curl returned a status code
      echo "Status code for $web_url: $status_code"

      # Basic status code interpretation
      if [[ "$status_code" -ge 200 && "$status_code" -lt 300 ]]; then
        echo "$web_url is OK."
      elif [[ "$status_code" -ge 300 && "$status_code" -lt 400 ]]; then
        echo "$web_url is a redirection."
      elif [[ "$status_code" -ge 400 && "$status_code" -lt 500 ]]; then
        echo "Client error on $web_url."
      elif [[ "$status_code" -ge 500 && "$status_code" -lt 600 ]]; then
        echo "Server error on $web_url."
      else
        echo "Unknown status code for $web_url."
      fi
    else
      echo "Error: Could not retrieve status code for $web_url."
    fi
  else
    echo "Please enter a valid URL."
  fi
done

echo -e "\nScript finished.\n"
