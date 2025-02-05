#!/bin/bash

## Chapter 8: Jobs and Processes
## Section 8.1: Job handling

echo "Enter the process name to kill it: "
read processName

if [[ -e ~/../usr/tmp/$processName.pid ]]; then # If the file do not exists, then the
 kill `cat ~/../usr/tmp/$processName.pid` #+the process is not running. Useless
 rm ~/../usr/tmp/$processName.pid #+trying to kill it.
else
 echo "'$processName' is not running"
fi
