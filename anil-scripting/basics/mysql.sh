#!/bin/bash #ensures the script runs with the correct shell.
#Tells the system which interpreter should run the script.
#Here, /bin/bash means: use Bash shell to execute the script.
#Without this, the system might try to run it with a different shell (like sh), 
#which could break your script if you use Bash-specific features.
#Purpose of this script is to install package # t’s just documentation for humans — 
#explains what the script is for.
#Loops through all packages passed as arguments.
#Checks if each is already installed.
#If not, installs it and validates success/failure.
#Logs details in $log.

#Checking Access
id=$(id -u)
date=$(date +%d-%m-%y"_"%H:%M:%S)
HOSTNAME=$(hostname | awk -F "." '{print $1F}')
log="/tmp/$HOSTNAME.$date.log"

if [ $id -ne 0 ]; then
    echo "ERROR: You should have superuser privilages"
    exit 1
    else
    echo "Acces validated: you have necessary access,proceeding with next step"
 fi

#function to validate -- Just calling & provide input
validate(){
    if [ $1 -ne 0 ]; then
    echo "error : $2 instalaltion failed"
    exit 1
    else
    echo "$2 installation success"
    fi
}
#packages passed as args
for i in "$@"
do 
   if dnf list installed "$i";
   then
    echo "$i already installed"&>>$log
    else
    dnf install $i -y &>>$log
    validate $? "$i" #calls the validate function:$? = exit code of last command (dnf install).$i = package name.
    fi
done   
   


