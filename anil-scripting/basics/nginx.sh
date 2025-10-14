#!/bin/bash
# Purpose : Installing package
# Author : Anil
# Date : 28th Sep
# Version : V1

USER_ID=$(id -u)
DATE=$(date +%d-%m-%y" "%H:%M:%S)
LOG_FILE="/tmp/$HOSTNAME.log.$DATE"

###Check access
if [ $USER_ID -ne 0 ]; then
    echo "ERRROR: You need superuser privilages to execuete this command"
    exit 1
    else
    echo "you have necessary access -- going to next step"
fi

#Use function to validate
VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "$2 installation failed"
    exit 1
    else
    echo "$2 installing"   
fi
}
#install package

for package in "$@"
do 
   if dnf list installed "$package"
    then
        echo "alreay $package installed"
    else   
        echo "$package installing"  
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "$package"
   fi
done







