#!/bin/bash

# read the lines from the input file using while loop method

# INPUTFILE=$1
# DATE=$(date +%F)
# LOGFILE=/home/centos/$DATE-reverse.log

# while read line
# do
#     rev $INPUTFILE

# done < $INPUTFILE

## read the given word is palindrome or not

echo "Enter a string"
read input
reverse=""

if [ $input == $reverse ]
then
    echo "$input is palindrome"
else
    echo "$input is not palindrome"
fi

