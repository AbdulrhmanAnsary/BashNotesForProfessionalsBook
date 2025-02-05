#!/usr/bin/env bash

# print Hello world using command line argument

printf "Hello, %s\n" "$1"
printf "Hello, $1\n"

# Usage : bash hello_world_cmd_argument.sh World
#> Hello, World
