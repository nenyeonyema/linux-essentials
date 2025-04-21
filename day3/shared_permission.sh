#!/bin/env bash

# 📁 Day 3 - Linux Essentials: Permissions and Ownership Practice
set -e

echo " Day 3 Linux permission & ownership practice..."

# Step 1: Move into day3 practice directory
cd ~/linux_essentials/day3

# Step 2: Create a file with read-only access to others
touch readonly_file.txt
chmod o=r readonly_file.txt

# Step 3: Create a shared folder and apply setgid (group inheritance)
mkdir shared_folder
chmod g+s shared_folder  # or: chmod 2775 shared_folder 

# Step 4: Create a file, add execute for user, remove write from group
touch devops_script.sh
chmod u+x,g-w devops_script.sh

# Step 5: Create a file and change its ownership to current user
touch owned_by_user.txt
sudo chown $USER:$USER owned_by_user.txt

# Step 6: Create a shared directory and apply sticky bit
mkdir shared_tmp
chmod +t shared_tmp  # or: chmod 1777 shared_tmp

# Show final permissions
echo -e "\n📋 Final permissions:"
ls -l

echo "✅ All done with Day 3 Linux essentials practice!"
