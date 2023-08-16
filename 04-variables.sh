#!/bin/bash

# variable type - run a command inside shell
# we can develop a program, that can do addition of 2 numbers

NUMBER1=$1
NUMBER2=$2

# I need to run a command inside shell to add these numbers
SUM=$((NUMBER1+NUMBER2))
echo "Addition of two numbers is: $SUM"