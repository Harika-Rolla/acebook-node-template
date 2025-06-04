#!/bin/bash
# Ensure ownership of the directory
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook
# Navigate to the app directory
cd /home/ec2-user/acebook
# Install node dependencies
npm install
