#!/bin/bash

# Check if URL is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send request to the URL using curl and get the size of the response body in bytes
response_size=$(curl -sI "$1" | grep -i "content-length" | awk '{print $2}')

# Display the size of the response body
echo "$response_size"
