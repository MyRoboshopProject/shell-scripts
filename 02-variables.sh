#!/bin/bash

# Date variable
# shell script run the command inside $() and stores the output into variable called DATE
DATE=$(date +%F:%H:%M:%S)


echo "Hello this script is executed at timestamp: $DATE"