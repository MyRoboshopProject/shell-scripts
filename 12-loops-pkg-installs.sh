#!/bin/bash

DATE=$(date +%F)
USERID=$(id -u)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE
N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: $N Please run the script with the root user"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "Installing $2... $R FAILURE $N"
    else
        echo -e "Installing $2... $G SUCCESS $N"
    fi
}

for i in $@
do
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo "The package is not installed, let's installe it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? $i       
    else
        echo "$Y $i is already installed"
    fi    
done


