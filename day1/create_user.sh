#!/bin/env bash

set -ex

read -p "enter your username: " user
# sudo mkdir /home/$user
sudo useradd -m $user
sudo chmod 750 /home/$user
sudo chown $user:$user /home/$user

echo "The folder and permissions set for the user: $user"
