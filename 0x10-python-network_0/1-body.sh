#!/bin/bash

# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a GET request to the URL and save the response body to a temporary file
response_file=$(mktemp)
curl -s -o "$response_file" -w "%{http_code}" "$1" > /dev/null

# Check the HTTP status code
http_code=$(cat "$response_file")
if [ "$http_code" == "200" ]; then
    # Display the body of the response
    cat "$response_file"
else
    echo "Received wrong HTTP status code $http_code. Body not displayed."
fi

# Clean up temporary file
rm "$response_file"
