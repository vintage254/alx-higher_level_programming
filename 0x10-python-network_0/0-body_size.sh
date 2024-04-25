#!/bin/bash
response=curl -s -o /dev/null -w "%{size_download}" <URL>
printf "response_size"
