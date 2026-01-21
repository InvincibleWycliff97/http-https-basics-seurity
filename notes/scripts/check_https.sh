#!/bin/bash
# check_https.sh
# Checks if a website redirects from HTTP to HTTPS

URL=$1

if [[ -z "$URL" ]]; then
  echo "Usage: ./check_https.sh example.com"
  exit 1
fi

RESPONSE=$(curl -I -s http://$URL | grep "Location")

if [[ $RESPONSE == *"https"* ]]; then
  echo "✅ $URL redirects to HTTPS"
else
  echo "⚠️ $URL does not enforce HTTPS"
fi
