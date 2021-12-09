#!/bin/bash
response=$(curl --write-out '%{http_code}' --silent --output /dev/null servername)
if [ "$response" = "200" ]; then
    echo yes
else 
    echo NOPE
fi