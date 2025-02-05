#!/usr/bin/env bash

# Section 1.4: Importance of Quoting in Strings page 5.

world="World"

# If you want to bash to expand your argument, you can use Weak Quoting ("").
echo "Hello $world using double quote."

# If you do not want to bash to expand your argument, you can use Strong Quoting ('').
echo 'Hello $world using single quote.'

# You can also use escape (\) to prevent expansion:
echo "Hello \$world using double quote with escape sign."
