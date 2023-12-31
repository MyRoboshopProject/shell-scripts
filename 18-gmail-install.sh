#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
	echo "ERROR:: This script has to be run with superuser privileges"
	exit 1
fi

# MAILID=$1
# PSSWORD=$2

# echo "Enter Mail ID: "
# read UserID
# echo "Enter Password: "
# read -s Password

VALIDATE(){
	if [ $1 -ne 0 ]
	then
		echo "$2.. FAILED"
		exit 1
	else
		echo "$2.. SUCCESS"
	fi
}

# Update yum repo
yum update -y --exclude=kernel*
VALIDATE $? "YUM Update... "

# Install Postfix, the SASL authentication framework, and mailx.
yum -y install postfix cyrus-sasl-plain mailx
VALIDATE $? "Installation... "

# Restart Postfix to detect the SASL framework
systemctl restart postfix
VALIDATE $? "systemctl restart ... "

# Start Postfix on boot
systemctl enable postfix
VALIDATE $? "systemctl enable ... "

# Open the /etc/postfix/main.cf file
cat main.cf >> /etc/postfix/main.cf
VALIDATE $? "Copying Files.. "

# touch /etc/postfix/sasl_passwd
cp sasl_passwd /etc/postfix/sasl_passwd

cp mongo.repo /etc/yum.repos.d/mongo.repo