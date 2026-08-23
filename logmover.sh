#!/bin/bash
# Mikhail U. #
# Create the Logs directory if it doesn't exist #
mkdir -p Logs
# Move all files ending with ".log" into the Logs directory #
mv *.log Logs/
# Print ASCII art #
cat log
echo "Log files have been moved."