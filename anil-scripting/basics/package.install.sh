#!/bin/bash
# Purpose : Install packages if not already installed
# Author  : Anil Kumar Kathoju
# Date    : 27th Sep 2025
# Version : V2

# Check if user is root
USER_ID=$(id -u)
LOG_FILE="/tmp/$HOSTNAME.log.+%d-%m-%y:%H:%M:%S"
if [ "$USER_ID" -ne 0 ]; then
    echo "ERROR: You need superuser privileges to install packages."
    exit 1
else
    echo "User has root privileges. Proceeding with installation..."
fi

# Function to validate package installation
VALIDATE() {
    exit_status=$1
    package=$2
    if [ "$exit_status" -ne 0 ]; then
        echo "ERROR: Installation of $package failed."
        exit 1
    else
        echo "SUCCESS: $package has been successfully installed."
    fi
}

# Loop over all packages passed as arguments
for package in "$@"; do
    # Check if package is already installed
    if dnf list installed "$package" >/dev/null 2>&1; then
        echo "INFO: $package is already installed on this server."
    else
        echo "INFO: Installing $package..."
        dnf install -y "$package" &>>$LOG_FILE
        VALIDATE $? "$package"
    fi
done
