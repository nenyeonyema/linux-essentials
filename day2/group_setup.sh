#!/bin/env bash

#Add user and group
sudo useradd -m dev_eng
sudo groupadd devops

#Add user to a group
sudo usermod -aG devops dev_eng

#View user's group
groups dev_eng