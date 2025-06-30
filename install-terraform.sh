#!/bin/bash

set -e

echo "🔄 Updating system packages..."
sudo apt-get update -y
sudo apt-get install -y gnupg software-properties-common curl

echo "🔑 Adding HashiCorp GPG key..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | \
    sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "📦 Adding HashiCorp APT repository..."
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

echo "📥 Installing Terraform..."
sudo apt-get update -y
sudo apt-get install terraform -y

echo "✅ Done! Terraform version installed:"
terraform -version
