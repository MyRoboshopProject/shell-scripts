
# Install My SQL

#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run with sudo user"
    exit 1
# else
#     echo "you are the root user"
fi

yum install mysqllll -y

# it is our responsiblity to check installation is success or not
if [ $? -ne 0 ]
then
    echo "ERROR:: MySQL Installation is error"
    exit 1
else
    echo "SUCCESS:: MySQL Installation is success"
fi