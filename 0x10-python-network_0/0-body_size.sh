#!/bin/bash
# Use curl to send a request to the URL and print the size of the response body

response=$(curl -s -o /dev/null -w "%{size_download}" "$1")
response_bits=$((response * 8))
# Print the size of the response body
echo "$response_bits"

