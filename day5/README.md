# 📦⚙️ Day 5 – Linux Essentials: Package Management & Services

This README documents two Bash scripts used for practicing Linux package managers (`apt`, `snap`) and managing system services (`systemctl`). These tasks are foundational for any DevOps engineer working with server provisioning, automation, and infrastructure management.

---

## 📁 Script 1: `day5_package_services.sh`

### 🔍 What It Does

This script simulates and performs common package management tasks using `apt` and `snap`, then manages the `nginx` web service using `systemctl`.

### ✅ Key Actions

1. **APT Package Manager**
   - Updates system package index.
   - Simulates a system upgrade.
   - Installs `nginx`.
   - Verifies the installation using `dpkg`.

2. **Snap Package Manager**
   - Installs a test snap (`hello-world`).
   - Lists and removes the snap package.

3. **Systemd Service Management**
   - Restarts the `nginx` service.
   - Enables it to start on boot.
   - Checks its status.
   - Views logs from the past 5 minutes.
   - Optionally removes `nginx`.

### ▶️ How to Run

```bash
chmod +x day5_package_services.sh
./day5_package_services.sh
```

💡 Note: This script uses sudo, so make sure you have the necessary privileges.

## 🌐 Script 2: install_nginx.sh
#### 🔍 What It Does
This script performs a clean, from-scratch installation of nginx, ensures the service is running, and checks if it serves content correctly.

✅ Key Actions
Updates system packages.

Installs nginx.

Enables the nginx service on boot.

Starts the service.

Checks the service status.

Sends an HTTP request to localhost to verify it works.

▶️ How to Run
```bash
chmod +x install_nginx.sh
./install_nginx.sh
```