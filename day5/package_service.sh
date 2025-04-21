#!/bin/bash

# 📦⚙️ Day 5 - Linux Essentials: Package Managers & Services
set -e

echo "📌 Day 5: Practicing Package Management and System Services..."

# SECTION 1: APT PACKAGE MANAGER
echo -e "\n🔄 Updating system..."
sudo apt update

echo "⬆️ Upgrading installed packages (simulated)..."
sudo apt upgrade -s  # -s simulates upgrade for safety in demo

echo "📥 Installing nginx..."
sudo apt install nginx -y

echo "📋 Verifying nginx installation..."
dpkg -l | grep nginx

# SECTION 2: SNAP PACKAGE MANAGER
echo -e "\n📦 Trying Snap package: hello-world"
sudo snap install hello-world
snap list | grep hello-world
sudo snap remove hello-world

# SECTION 3: SYSTEMD SERVICES
echo -e "\n⚙️ Managing nginx service..."

echo "🔁 Restarting nginx..."
sudo systemctl restart nginx

echo "✅ Enabling nginx to start on boot..."
sudo systemctl enable nginx

echo "📊 Checking nginx status..."
sudo systemctl status nginx | head -10

echo "📜 Checking logs for nginx..."
sudo journalctl -u nginx --since "5 minutes ago" --no-pager | tail -10

echo "🧹 Optional cleanup: remove nginx? (y/n)"
read remove_nginx
if [[ "$remove_nginx" == "y" ]]; then
  sudo systemctl stop nginx
  sudo apt remove nginx -y
  sudo apt purge nginx -y
  echo "🗑️ Nginx removed."
else
  echo "✅ Nginx retained."
fi

echo -e "\n🎉 Practice complete!"

