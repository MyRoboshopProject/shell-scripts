#!/bin/bash

# read the lines from the input file using while loop method

INPUTFILE=$1

while read line
do
    rev $INPUTFILE

done < $INPUTFILE