#!/bin/bash

# Variables
USERID=$(id -u)
SCRIPT_NAME=$0

DATE=$(date +%F)

# should run with sudo user
if [ $USERID -ne 0 ]
echo "ERROR:: Please run with sudo user"
exit 1
fi

# for Loop to install the packages with user inputs 
for i in $@
do
    yum install $i -y
done

# Function for Validations
VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "Installation is failure"
    else
        echo "Installaiton is success"
    fi
}

VALIDATE $?