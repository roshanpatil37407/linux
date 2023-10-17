#!/bin/bash

# Function to calculate the factorial of a number
factorial() {
  if [ "$1" -le 1 ]; then
    echo 1
  else
    echo $(( $1 * $(factorial $(( $1 - 1 ))
  fi
}

# Read input from the user
read -p "Enter a number: " num

# Check if the input is a non-negative integer
if [[ $num =~ ^[0-9]+$ && $num -ge 0 ]]; then
  result=$(factorial $num)
  echo "Factorial of $num is $result"
else
  echo "Invalid input. Please enter a non-negative integer."
fi
