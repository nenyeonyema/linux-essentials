#!/bin/env bash

set -ex

read -p "Enter your username: " user
read -p "Enter your groupname: " group

# checks if group exist and create a group

if getent group "$group" > /dev/null; then
        echo "Group '$group' already exists"
else
        sudo groupadd "$group"
        echo "Group '$group'  created."
fi


#checks if user exist and create a user

if id "$user" &>/dev/null; then
        echo "User '$user' already exist."
else
        sudo useradd -m -G "$group" "$user"
        echo "User '$user' created and added to group '$group'."
fi

sudo chmod 750 /home/$user
sudo chown $user:$group /home/$user

echo "Setup completed for the user '$user' in group '$group'"