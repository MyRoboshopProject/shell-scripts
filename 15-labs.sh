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


# is_palindrome() {
#     input=$1
#     reveresed=$(echo "$input" | rev)

#     if [ "$input" == "$revresed" ]
#     then
#         echo "Palindrome"
#     else
#         echo "Not Palindraome"
#     fi
# }

# # Check if input is provided
# if [ $? -ne 0 ]
# then
#     echo "Provide the input"
#     exit 1
# fi

# input_string=$1

# # Remove spaces and convert to lowercase for accurate palindrome check
# input_string=$(echo "$input_string" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')

# is_palindrome $?

echo "Enter the string"
read s
echo $s>input
reversed=$(rev input)
if [ $s = $reversed ]
then
    echo "it is Palindrome"
else
    echo "It is not a Palindrome"
fi