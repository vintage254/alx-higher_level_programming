#!/bin/bash

# script that takes in a URL, sends a request to that URL, and displays the size of the body of the response

response_bit=$(curl -s -w "%{size_download}" "$1" | awk '{ printf "%.0f", $1 * 8 }')
echo "$response_bit"

