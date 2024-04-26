#!/usr/bin/python3


"""script that takes in a URL and an email,
sends a POST request to the passed URL with the email as a parameter,
and displays the body of the response (decoded in utf-8)"""


import urllib.request
import urllib.parse
import sys

if __name__ == "__main__":
    url = sys.argv[1]
    email = sys.argv[2]

    # Encode the email parameter
    data = urllib.parse.urlencode({'email': email}).encode('ascii')

    # Make the POST request
    with urllib.request.urlopen(url, data=data) as response:
        # Read and decode the response
        decoded_response = response.read().decode('utf-8')
        print(decoded_response)
