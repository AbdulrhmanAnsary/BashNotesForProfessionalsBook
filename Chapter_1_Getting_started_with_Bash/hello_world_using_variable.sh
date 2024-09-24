#!/usr/bin/env bash

# Note that spaces cannot be used around the `=` assignment operator
message="World"

echo "Hello, $message"

# Use printf to safely output the data
printf "Hello, %s\n" "$message"

#> Hello, World
