#!/bin/bash

# check if the input file is provided

input_file="$1"

if [ $# -ne 1 ]
    echo "Usage: $0 input_file"
    exit 1
fi

