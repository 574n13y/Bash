#!/bin/bash


# For loop to iterate over cloud providers

echo -e "\n--- For Loop: Cloud Providers ---\n"
cloud_providers="AWS Azure GCP"
for provider in $cloud_providers; do
  echo "Cloud Provider: $provider"
done


echo -e "\n--- Script Finished ---\n"
