#!/bin/bash

# Variables
USERID=$(id -u)
DATE=$(date +%F)
SCRIPT_NAME=$0
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE=/tmp/$SCRIPT_NAME-$DATE

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

# Function for Validations
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2... $R FAILURE $N"
        exit 1
    else
        echo -e "$2... $G SUCCESS $N"
    fi
}

VALIDATE $? "Installing $1"
$@ &>>$LOGFILE