#!/bin/bash

VAR1=$1
VAR2=$2

# print only the first input provided by user
echo "variable 1: $VAR1"

# print all the iputs provided by user
echo "All variables: $@"

# print how many numbers provided by user
echo "No. of vars: $#"
