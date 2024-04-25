#!/bin/bash
#script that takes in a URL, sends a GET request to the URL, and displays the body of the response
response=$(curl -s -w "%{http_code}" "$1"); if [ "$response" == "200" ]; then echo "$response"; else echo "Received HTTP status code $response. Body not displayed."; fi

