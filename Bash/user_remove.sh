#! /bin/bash

if (( EUID != 0 )); then
    echo "Error: This script must be run as root or with sudo." >&2
    exit 1
fi

while IFS= read -r USER; do

    # create backup of user files
    echo Now backing up user home directory for: $USER
    sudo tar -zcvpf /backup/"$USER".tar.gz /home/"$USER"
    echo Home directory back up complete
    # remove users from system
    echo Removing user: $USER
    userdel $USER
    #echo $USER
done < "$1"
