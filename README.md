# Linux-Essentials

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