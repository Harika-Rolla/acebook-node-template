#!/bin/bash
echo "Cleaning old app directory..."
# Give ec2-user permission to remove everything
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook
# Remove everything *except* the scripts directory (to avoid deleting this script)
find /home/ec2-user/acebook -mindepth 1 ! -path "/home/ec2-user/acebook/scripts/*" -exec rm -rf {} +
