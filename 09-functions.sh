#!/bin/bash

# Install My SQL and postfix trhough script

# Date variable
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

USERID=$(id -u)

# this function shold validate previous command and inform user it is success or failure
VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo -e "\e[0m $2 is \e[31m FAILURE"
        exit 1
    else
        echo -e "\e[0m $2 is \e[31m SUCCESS"
    fi
}

# check the user is running with sudo access, and inform to run with root user if not
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run with sudo user"
    exit 1
# else
#     echo "you are the root user"
fi

# it is our responsiblity to check installation is success or not
# So that calling functions to validate the previous command is success/ failure
yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"

yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing postfix"