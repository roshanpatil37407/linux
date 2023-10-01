#!/bin/bash

# Get the current hour (in 24-hour format)
current_hour=$(date +%H)

# Display the current time
echo "Current Time: $(date +%H:%M:%S)"

# Display a message based on the time
if [ $current_hour -ge 0 ] && [ $current_hour -lt 12 ]; then
    echo "Good morning!"
elif [ $current_hour -ge 12 ] && [ $current_hour -lt 18 ]; then
    echo "Good afternoon!"
else
    echo "Good evening!"
fi
