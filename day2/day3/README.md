# 📘 Day 3 - Linux Essentials: Permissions & Ownership Practice

On **Day 3** of my DevOps Linux Essentials journey, I practiced how to manage **file and directory permissions**, **ownership**, and special permission bits like **setgid** and **sticky bit**. These are crucial for securely managing user access and shared resources in any Linux system.

---

## 🔧 What This Script Does

This Bash script automates the following Linux permission-related tasks:

### 📁 Step-by-Step Breakdown

1. **Create Practice Directory**
   - Moves into the practice folder for the day:
     ```bash
     cd ~/linux_essentials/day3
     ```

2. **Create a File Readable Only by Others**
   - Creates a file and gives read-only access to others:
     ```bash
     touch readonly_file.txt
     chmod o=r readonly_file.txt
     ```

3. **Create a Shared Folder with Setgid**
   - Ensures files created in the folder inherit the group:
     ```bash
     mkdir shared_folder
     chmod g+s shared_folder  # or chmod 2775 shared_folder
     ```

4. **Set Specific File Permissions**
   - Adds execute permission for the user and removes write from the group:
     ```bash
     touch devops_script.sh
     chmod u+x,g-w devops_script.sh
     ```

5. **Change File Ownership**
   - Creates a file and sets current user as owner:
     ```bash
     touch owned_by_user.txt
     sudo chown $USER:$USER owned_by_user.txt
     ```

6. **Create a Shared Directory with Sticky Bit**
   - Restricts file deletion to file owners (common in `/tmp` directories):
     ```bash
     mkdir shared_tmp
     chmod +t shared_tmp  # or chmod 1777 shared_tmp
     ```

7. **Display Permissions**
   - Lists the current permissions:
     ```bash
     ls -l
     ```

---

## 📥 Sample Output

```bash
📋 Final permissions:
-r--r--r--  chinenye chinenye  readonly_file.txt
drwxr-sr-x  chinenye chinenye  shared_folder
-r-xr--r--  chinenye chinenye  devops_script.sh
-rw-r--r--  chinenye chinenye  owned_by_user.txt
drwxrwxrwt  chinenye chinenye  shared_tmp
