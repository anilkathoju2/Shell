#!/bin/bash

#check id have necessary privialges
USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR: You need super user privilages to install this packages"
    exit 1
    else
    echo "you have necessary super user access" 
fi

#Check if packages already exist or not

VALIDATE(){
exit_status=$1
package=$2
if [ $1 -ne 0 ]; then
    echo "$2 already installed"
    else
    echo "installing completed successfully $2"
fi
}

#Install packages

for package in  "$@"
do
    dnf list installed | grep $package
    if [ $? -ne 0 ]; then
      dnf install $package -y &>>/var/log/$HOSTNAME.log
        VALIDATE $? "$2"
    else
        echo "$package already installed in the server"
fi
done
