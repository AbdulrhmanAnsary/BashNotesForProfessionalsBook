#!/bin/env bash

# Section 1.7: Handling Named Arguments

deploy=false
uglify=false

# "$#" the arguments count
while (($# > 1)); do
  echo "$#, $1, $2" # "$1", "$2" the first and second argument
  case $1 in
  --deploy) deploy="$2" ;;
  --uglify) uglify="$2" ;;
  *) break ;;
  esac
  shift 2 # It shifts the arguments to the left by 2 which means that the first arguments are ignored
done

$deploy && echo "will deploy... deploy = $deploy"
$uglify && echo "will uglify... uglify = $uglify"

# How to run
# chmod +x script.sh
# ./script.sh --deploy true --uglify false
