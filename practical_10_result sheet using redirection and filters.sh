#!/bin/bash

# Sort the student_scores.txt file by score in descending order
sort -k2 -nr student_scores.txt > sorted_scores.txt

# Create a header for the result sheet
echo "Rank   Name    Score"

# Display the top 5 students
head -n 5 sorted_scores.txt | cut -f2,3 | paste -d" " - - -

# Display a separator
echo "---------------------"

# Display the bottom 5 students
tail -n 5 sorted_scores.txt | cut -f2,3 | paste -d" " - - -
