#!/usr/bin/python3


"""uses requests package to fetch the URL and display the body of the response"""


import requests

if __name__ == "__main__":
    url = 'https://alx-intranet.hbtn.io/status'

    response = requests.get(url)
    data = response.text

    print("Body response:")
    print("\t- type:", type(data))
    print("\t- content:", data)
