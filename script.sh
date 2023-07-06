#!/bin/bash

# Read the access key value from the environment variable

access_key_value="$(az keyvault secret show --vault-name tf-state1 --name tf-state-AK --query value -o tsv)"

# Define the file path
file_path="./backend.tf"

# Update the access_key variable in the file
# sed -i -e "/access_key =/ s/= .*/= '$access_key_value'/" ./main.tf
sed -i -e "/access_key =/ s/= .*/= \""$(echo $access_key_value)"\"/" ./main.tf
cat .main.tf
