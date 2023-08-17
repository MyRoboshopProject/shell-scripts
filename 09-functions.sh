# Install My SQL and postfix trhough script

#!/bin/bash

USERID=$(id -u)

# this function shold validate previous command and inform user it is success or failure
VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo "$2 is FAILURE"
    else
        echo "$2 is SUCCESS"
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
yum install mysql -y
VALIDATE $? "Installing MySQL"

yum install postfix -y
VALIDATE $? "Installing postfix"