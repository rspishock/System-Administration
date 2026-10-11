#! /bin/bash

if (( EUID != 0 )); then
    echo "Error: This script must be run as root or with sudo." >&2
    exit 1
fi

while IFS= read -r USER; do
    # add users to system
    echo Adding user: $USER
    userdel $USER
    #echo $USER
done < "$1"