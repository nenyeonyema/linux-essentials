# 📄 Day 2 – Users, Groups & Permissions
# Day 2: Users, Groups & File Permissions

Welcome to Day 2 of the Linux Essentials series! Today, we explored how user and group management works in Linux, how it affects file permissions, and the critical commands every DevOps engineer must know.

---

This script below automates the process of creating a new Linux user, assigning them to a group (creating the group if it doesn’t exist), and setting the appropriate permissions on their home directory. It's designed for DevOps engineers to streamline user management in Linux environments.
---

## 📜 Script Overview

---

## 🛠️ What It Does

1. Prompts for a **username** and **group name**
2. Checks if the group exists – creates it if it doesn’t
3. Checks if the user exists – creates it and adds them to the specified group
4. Sets directory permissions:
   - Makes sure only the user and group can access their `/home/username` folder
   - Uses `chmod 750` for privacy and group collaboration
5. Outputs a confirmation message

---

## 📜 Script Preview

```bash
#!/bin/env bash

read -p "Enter new username: " user
read -p "Enter group name: " group

# Check and create group
if getent group "$group" > /dev/null; then
  echo "Group '$group' already exists."
else
  sudo groupadd "$group"
  echo "Group '$group' created."
fi

# Check and create user
if id "$user" &>/dev/null; then
  echo "User '$user' already exists."
else
  sudo useradd -m -G "$group" "$user"
  echo "User '$user' created and added to group '$group'."
fi

# Set permission on home directory
sudo chmod 750 /home/$user
sudo chown $user:$group /home/$user

echo "✅ Setup complete for user '$user' in group '$group'."
```
---
## ✅ Sample Run

```bash
$ chmod +x user_group_setup.sh
$ ./user_group_setup.sh
Enter new username: genny
Enter group name: devops
Group 'devops' already exists.
User 'genny' created and added to group 'devops'.
✅ Setup complete for user 'genny' in group 'devops'.
```

## 📚 Key Concepts Demonstrated
getent group: Checks if a group exists

groupadd: Creates a new group

id user: Checks if a user exists

useradd -m -G group user: Creates user with a home directory and adds to group

chmod 750: Directory access for owner and group only

chown user:group: Assigns ownership of the home directory

## 🔐 Why chmod 750?
7 (Owner): Read, write, execute

5 (Group): Read and execute

0 (Others): No access
This ensures only the user and members of the group can access the home directory.

## 🚀 When to Use This Script
Setting up new users for a DevOps team

Assigning specific users to project groups

Preparing home directories with restricted access

