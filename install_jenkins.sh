#!/bin/bash

# ===== 1. ติดตั้ง Java =====
echo "📦 Updating package list and installing OpenJDK 17..."
sudo apt update
sudo apt install -y openjdk-17-jdk

# ===== 2. เพิ่ม Jenkins key และ repository =====
echo "🔐 Adding Jenkins GPG key and repository..."
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# ===== 3. ติดตั้ง Jenkins =====
echo "🛠 Installing Jenkins..."
sudo apt update
sudo apt install -y jenkins

# ===== 4. Start Jenkins Service =====
echo "🚀 Starting and enabling Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "✅ Jenkins installation complete."
