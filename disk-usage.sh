#!/bin/bash

# Continously check disk memory and send alert emails if it is more then threshold

# Colors
# Validations
# logs

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1
message=""

#IFS= means internal feild seperator is space.
while IFS= read line
do
    # this command will give you usage in number format for comparision
    usage=$(echo $line | awk '{print $6}' | cut -d% -f1)
    # this command will give us partition
    partition=$(echo $line | awk {print $1}")
    #now you need to check whether it is more than threshold or not
    if [ $usage -gt $DISK_USAGE_THRESHOLD ];
    then
        message+="HIGH DISK USAGE on $partition: $usage\n"
    fi
done <<< $DISK_USAGE

echo -e "message: $message"