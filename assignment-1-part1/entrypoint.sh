#!/bin/bash

# Start Nginx in the background
service nginx start

# Generate index.html periodically to update content
while true; do
    echo "hello"
    /index.sh
    sleep 60  # Regenerate content every 60 seconds
done
