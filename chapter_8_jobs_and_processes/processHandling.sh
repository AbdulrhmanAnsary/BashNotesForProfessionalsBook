#!/bin/bash

## Chapter 8: Jobs and Processes
## Section 8.1: Job handling

echo "Enther the process name: "
read processName

if [[ ! -e ~/../usr/tmp/$processName.pid ]]; then # Check if the file already exists
	$processName &                                   #+and if so do not run another process.
	echo $! >~/../usr/tmp/$processName.pid
else
	echo -n "ERROR: The process is already running with pid "
	cat ~/../usr/tmp/$processName.pid
	echo
fi
