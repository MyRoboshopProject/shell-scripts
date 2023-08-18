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

# Function to check if a string is a palindrome

echo "Enter a String"
read input

is_palindrome() {
    input=$1
    reveresed=$(echo "$input" | rev)

    if [ "$input" == "$revresed" ]
    then
        echo "Palindrome"
    else
        echo "Not Palindraome"
    fi
}
