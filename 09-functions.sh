# Install My SQL and postfix trhough script

#!/bin/bash

USERID=$(id -u)

VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo "$2 is FAILURE"
    else
        echo "$2 is SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run with sudo user"
    exit 1
# else
#     echo "you are the root user"
fi

# it is our responsiblity to check installation is success or not

yum install mysql -y
VALIDATE $? "Installing MySQL"

yum install postfix -y
VALIDATE $? "Installing postfix"