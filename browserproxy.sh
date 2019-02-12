#!/bin/bash
URL="$1"
if [[ $URL == *"youtube"* ]]; then
  chromium "$1"
else
  /opt/google/chrome/chrome "$URL"
fi
