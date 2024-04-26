#!/usr/bin/python3
import urllib.request
import sys


""" script that takes in a URL as an argument,
sends a request to the URL using urllib"""


if __name__ == "__main__":
    url = sys.argv[1]

    with urllib.request.urlopen(url) as response:
        headers = response.headers
        x_request_id = headers.get('X-Request-Id')
        print(x_request_id)
