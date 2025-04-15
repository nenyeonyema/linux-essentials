# DAY 1 Linux-Essentials

# 🧑‍💻 Linux User Folder Setup Script

This script automates the process of creating a new user on a Linux system, generating a home directory for the user, and setting proper permissions for that directory. It is useful for system administrators and DevOps engineers who want to enforce consistent user management practices.

---

## 📜 Script Overview

```

#!/bin/env bash

set -ex

read -p "enter your username: " user

sudo useradd -m $user
sudo chmod 750 /home/$user
sudo chown $user:$user /home/$user

echo "The folder and permissions set for the user: $user"
```
## 🔧 What It Does
Prompts for a username via interactive input.

Creates a system user using `useradd -m`, which also creates a home directory (`/home/username`).

Sets secure folder permissions:

`chmod 750`: Gives full access to the owner, read/execute to the group, and no access to others.

`chown`: Ensures the new user owns their home directory.

Prints a success message when done.

## ✅ Requirements
Linux system with Bash shell

Sudo privileges (required to add users and change ownership)


## 🚀 How to Use

Make the script executable:
`chmod +x create_user.sh`

Run the script:
`./create_user.sh`

You’ll be prompted to enter a username, and the script will handle the rest.

## 📁 Example Output
```
enter your username: genny
The folder and permissions set for the user: genny
```