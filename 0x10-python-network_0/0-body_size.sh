#!/bin/bash

# Check if the user has provided a URL
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a request to the provided URL and store the response body in a temporary file
response=$(curl -sI "$1")
body_size=$(echo "$response" | grep -i '^Content-Length:' | awk '{print $2}')

# Display the size of the response body in bytes
echo "$body_size"
