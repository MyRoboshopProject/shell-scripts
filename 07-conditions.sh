#!/bin/bash

# check if your number is greate than 10 or not
NUMBER=$1
if [ $NUMBER -ne 10 ]
then
    echo "The number is not equal to 10"
else
    echo "The number is equals to 10"
fi