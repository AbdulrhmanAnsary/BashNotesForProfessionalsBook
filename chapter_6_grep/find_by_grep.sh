#!/usr/bin/env bash

# Section 6.1: How to search a file for a pattern

echo "Enter a pattern:"
read pattern

echo "Enter the file name or skip to search in all files:"
read fileName

echo "Do you want to select the matching lines (y/n):"
read matching

if [[ -z $fileName ]]; then # Check if the variable is empty
  fileName="*"              # Search in all files
fi

for file in $fileName; do
  if [[ $matching == "y" || $matching == "Y" ]]; then
    grep "$pattern" "$file" # To find the pattern in the matching lines
  elif [[ $matching == "n" || $matching == "N" ]]; then
    grep -v "$pattern" "$file" # To find all lines that do not contain the pattern
  else
    echo "Unknown argument: '$matching' Exiting the program."
    break # Exit the loop because of invalid input
  fi
done
