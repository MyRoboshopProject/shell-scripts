#!/bin/bash

# read the lines from the input file using while loop method

INPUTFILE=$1

while read line
do
    echo $line
    rev $INPUTFILE

done < $INPUTFILE