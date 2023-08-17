
# Install My SQL

#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run with sudo user"
    
else
    echo "you are the root user"
fi

yum install mysql -y