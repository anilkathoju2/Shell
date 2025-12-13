#!/bin/bash

#purpose : to install nginx
#author Anil
#version: 1.0

id=$(id -u)

if [ $id -ne 0 ]; then
    echo "Error: you need root access to install this"
    else
    echo "Access validated"
fi

if dnf list installed | grep nginx; then
     echo "nginx already exist"
     else
     dnf install nginx -y
     echo "nginx installation complted"
fi
     

