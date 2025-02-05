#!/bin/bash

## Chapter 8: Jobs and Processes
## Section 8.1: Job Handling

echo -n "Enter the process name: "
read processName

pid_file="~/../usr/tmp/$processName.pid"

# Check if the PID file exists
if [[ -f "$pid_file" ]]; then
	# Read the PID from the file
	pid=$(cat "$pid_file")

	# Check if the process is still running
	if ps -p "$pid" &>/dev/null; then
		echo "ERROR: The process '$processName' is already running with PID $pid."
		exit 1
	else
		echo "Stale PID file found. Removing..."
		rm -f "$pid_file"
	fi
fi

# Start the process in the background
if command -v "$processName" &>/dev/null; then
	"$processName" &
	echo $! >"$pid_file"
	echo "Process '$processName' started with PID $!"
else
	echo "ERROR: Command '$processName' not found."
	exit 1
fi
