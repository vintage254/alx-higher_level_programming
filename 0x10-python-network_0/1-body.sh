#!/bin/bash

# Check if URL is provided as argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

response=$(curl -s -o /dev/null -w "%{http_code}" "$1")

if [ "$response" == "200" ]; then
    curl -s "$1"
else
    echo "Received HTTP status code $response. Body not displayed."
fi
