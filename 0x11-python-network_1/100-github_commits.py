#!/usr/bin/python3


"""fetches the 10 most recent commits from a specified
GitHub repository using the GitHub API"""


import requests
import sys

if __name__ == "__main__":
    repository_name = sys.argv[1]
    owner_name = sys.argv[2]

    url = f'https://api.github.com/repos/
    {owner_name}/{repository_name}/commits'

    """ Make GET request to fetch commits """
    response = requests.get(url)

    """ Check if the request was successful """
    if response.status_code == 200:
        commits = response.json()

        """ Print the commits"""
        for commit in commits[:10]:
            sha = commit['sha']
            author_name = commit['commit']['author']['name']
            print(f"{sha}: {author_name}")
    else:
        print("Error:", response.status_code)
