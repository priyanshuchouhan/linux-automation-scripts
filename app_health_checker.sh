#!/bin/bash

URL=$1

if [ -z "$URL" ]; then
echo "Usage: ./app_health_checker.sh <url>"
exit 1
fi

STATUS=$(curl -L -o /dev/null -s -w "%{http_code}" "$URL")

if [ "$STATUS" -ge 200 ] && [ "$STATUS" -lt 400 ]; then
echo "Application Status: UP"
echo "HTTP Status Code: $STATUS"
else
echo "Application Status: DOWN"
echo "HTTP Status Code: $STATUS"
fi



