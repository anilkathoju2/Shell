#!/bin/bash
#############################################################
#purpose: to install packages as argumnet                   #
#Author : Anil                                              #
#Date : 29th Sep                                            #
#Version: 1.0                                               #
#############################################################

##CHeck user's sudo  access
id=$(id -u)
DATE=$(date +%d-%m-%y" "%H:%M:%S)
HOSTNAME=$(hostname | awk -F "." '{print $1F}')
LOG=/tmp/$HOSTNAME.$DATE.log


if [ $id -ne 0 ]; then
   echo "Error: You dont have necessary access"
   exit 1
   echo "Access validated: You have necessary access"
fi

#Fuction to validate -- reusable logic

validate() {
if [ $1 -ne 0 ]; then
    echo "$2 insatllation failed"
    exit 1
    else
    echo "$2 installation success"
fi
}

#Install packages with help for loop passed as 
for i in "$@"
do 
#if [ $? -ne 0 ]; then
if dnf list installed | grep "$i"; then
  echo "$i already installed"
  else
  dnf install $i -y &>>$LOG
  validate $? "$i"
  echo "$i installation completed"
fi
done






