#!/bin/bash

DATE=$(date +%F)
USERID=$(id -u)
LOGSDIR=/home/centos/shell-script-logs
LOGFILE=$LOG-DIR-$DATE.log
N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: $N Please run the script with root access"
    exit 1
fi
