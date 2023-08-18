#!/bin/bash

USERID=$(id -u)

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: $N Please run the script with the root user"
fi


