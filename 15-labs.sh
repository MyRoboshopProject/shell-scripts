#!/bin/bash

# read each line from the input file and reverses the order of the characters 

INPUTFILE=$1
DATE=$(date +%F)
LOGFILE=/home/centos/$DATE-reverse.log

# Using while loop

while read line
do
    rev $INPUTFILE
    
done < $INPUTFILE


# checks whether a given word or phrase is a palindrome

echo "Enter the string"
read s
echo $s>input
revresed=$(rev input)
if [ $s = $reveresed ]
then
    echo "it is Palindrome"
else
    echo "It is not a Palindrome"