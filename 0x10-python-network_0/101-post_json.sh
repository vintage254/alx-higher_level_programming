#!/bin/bash
# Bash script that sends a JSON POST request to a URL passed as the first argument, and displays the body of the response.
if jq . "$2" >/dev/null 2>&1; then curl -sX POST -H "Content-Type: application/json" -d @"$2" "$1"; else echo "Not a valid JSON"; fi
