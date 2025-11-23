#!/bin/bash

#if access go to next 

#if not exit

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "you does not required access"
    exit 1
fi    

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "can not install $2 is failure"
        exit 1
    else
        echo "installing $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "MySql"

