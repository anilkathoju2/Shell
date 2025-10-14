#!/bin/bash
#First Note#
#echo "Hello world"
#echo "I am Anil and upskilling to DevSecOps with AWS"
#echo "Thank you"


#CITI1=Hyderabad
#CITI2=Bengalore
#CITI3=Mumbai

#echo "$CITI1 Is Telangana capital"
#echo "$CITI2 Is Karnataka capital"
#echo "$CITI3 Is Maharastra capital"


#CITI1=$1
#CITI2=$2
#CITI3=$3

#echo "$CITI1 Is Telangana capital"
#echo "$CITI2 Is Karnataka capital"
#echo "$CITI3 Is Maharastra capital"

#echo "Please enter your password"
#read -s PASSWORD 
#echo "password entered is : $*" #password will be hidden
#echo "password entered is : $PASSWORD" #password will displayed here

#echo "Course name is: $COURSE"

#echo "All varibale passed to: $@" # All parameters will be displayed here
#echo "All varibale passed to: $*"
echo "Script name: $0" # it display file name
echo "$PWD"
echo "PID of script: $$"
echo "current location: $HOME"
echo "User name: $USER"
sleep 20 &
echo "PID of last command: $!"  #it will show PID last command