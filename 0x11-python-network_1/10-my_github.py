#!/usr/bin/python3


"""script that takes your GitHub credentials
(username and password) and uses the GitHub API to display your id"""


import requests
import sys

if __name__ == "__main__":
    username = sys.argv[1]
    password = sys.argv[2]

    # Encode the credentials for Basic Authentication
    auth = (username, password)

    # URL for the GitHub API to get user information
    url = f'https://api.github.com/users/{vintage254}'

    # Send GET request with Basic Authentication
    response = requests.get(url, auth=auth)

    if response.status_code == 200:
        user_info = response.json()
        user_id = user_info['id']
        print(user_id)
    else:
        print(None)
