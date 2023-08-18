#!/bin/bash

# read the lines from the input file using while loop method

INPUTFILE=$@
DATE=$(date +%F)
LOGFILE=/home/centos/$DATE-reverse.log

while read line
do
    rev $INPUTFILE

done < $INPUTFILE