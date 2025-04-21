#!/bin/bash

# 🚀 Script: install_nginx.sh
# Purpose: Install and verify NGINX from scratch

set -e

echo "🔧 Updating package list..."
sudo apt update -y

echo "📦 Installing nginx..."
sudo apt install nginx -y

echo "✅ Enabling nginx to start on boot..."
sudo systemctl enable nginx

echo "🔁 Starting nginx..."
sudo systemctl start nginx

echo "📊 Checking nginx status..."
sudo systemctl status nginx | head -10

echo "🌐 Testing if nginx is serving content on localhost..."
sleep 2
curl -I http://localhost

echo "🎉 NGINX installation and verification complete!"

