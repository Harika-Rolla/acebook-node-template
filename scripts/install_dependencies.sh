#!/bin/bash
set -xe

echo "Installing Node.js and npm..."

# Install Node.js (using NodeSource repository for latest LTS)
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

echo "Node.js version: $(node --version)"
echo "npm version: $(npm --version)"

echo "Installing application dependencies..."
cd /home/ec2-user/acebook
npm install

echo "Dependencies installed successfully"
