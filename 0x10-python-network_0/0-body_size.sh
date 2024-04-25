#!/bin/bash

# Check if the user has provided a URL
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

# Send a GET request to the URL using curl, and pipe the output to wc to count bytes
SIZE=$(curl -sI "$URL" | grep -i Content-Length | awk '{print $2}')

# Check if Content-Length header exists
if [ -z "$SIZE" ]; then
    echo "Could not determine content size."
    exit 1
fi

echo "$SIZE"
