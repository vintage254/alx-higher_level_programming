#!/usr/bin/python3


""" script that takes in a URL,
sends a request to the URL and
displays the body of the response."""


import requests
import sys

if __name__ == "__main__":
    url = sys.argv[1]

    response = requests.get(url)
    status_code = response.status_code

    if status_code >= 400:
        print("Error code:", status_code)
    else:
        print(response.text)
