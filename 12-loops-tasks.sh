#!/bin/bash

# Variables
USERID=$(id -u)
SCRIPT_NAME=$0

DATE=$(date +%F)

# should run with sudo user
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run with sudo user"
    exit 1
fi

# for Loop to install the packages with user inputs 
for i in $@
do
    yum install $i -y
done

# if condition to check the previous command status
if [ $? -ne 0 ]
then
    echo "FAILURE:: Installation is failed"
    exit 1
fi

# VALIDATE $?

# # Function for Validations
# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo "Installation is failed"
#         exit 1
#     else
#         echo "Installaiton is success"
#     fi
# }