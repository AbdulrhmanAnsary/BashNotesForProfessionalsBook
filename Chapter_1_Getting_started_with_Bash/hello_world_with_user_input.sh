#!/usr/bin/env bash

# Section 1.3: Hello World with User Input page 4

echo "Who are you"
# Reads one line of data from standard input into the variable name
read name

echo "Hello, $name."

echo "What are you doing?"
read action

# To append something to the variable value while printing it, use curly brackets around the variable name.
echo "You are ${action}ing."
