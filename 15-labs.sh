#!/bin/bash

# read the lines from the input file using while loop method

INPUTFILE=$1
DATE=$(date +%F)
LOGFILE=/home/centos/$DATE-reverse.log

while read line
do
    rev $INPUTFILE &>>$LOGFILE

done < $INPUTFILE