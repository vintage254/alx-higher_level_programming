#!/bin/bash
# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi
# Use curl to send a request to the URL and print the size of the response body

response=$(curl -s -w "%{size_download}" "$1")
response_bits=$((response * 8))
# Print the size of the response body
echo "$response_bits"

