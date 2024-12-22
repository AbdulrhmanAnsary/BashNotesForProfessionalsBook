#!/usr/bin/env bash

# Section 1.6: Hello World in "Debug" mode

num=7
char="A"

correctSum=$(expr 5 + $num)
wrongSom=$(expr 5 + $char)

echo $correctSum
echo $wrongSum

# How to run the script in debug mode.
# bash -x helloWorldInDebugMode.sh
