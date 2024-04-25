#!/bin/bash

# Check if the number of arguments is not equal to 1
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Assign the URL passed as an argument to the variable
url="$1"

# Use curl to send a request to the URL and print the size of the response body
response=$(curl -s -o /dev/null -w "%{size_download}" "$url")

# Print the size of the response body
echo "$response"

