#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# script that takes in a URL, sends a request to that URL, and displays the size of the body of the response

response=$(curl -s -w "%{size_download}" "$1")
response_bit=$((response * 8))
echo "$response_bit"

