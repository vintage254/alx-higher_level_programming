#!/bin/bash

# Check if any URL is provided as argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <URL1> [<URL2> ...]"
    exit 1
fi

# Iterate over each URL argument
for url in "$@"; do
    # Send a GET request to the URL and display the size of the body of the response in bits
    response=$(curl -s -w "%{size_download}" "$url" | awk '{ printf "%.0f", $1 * 8 }')
    echo "$response"
done

