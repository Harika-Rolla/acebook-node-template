#!/bin/bash
# echo "Cleaning old app directory..."

# # Change ownership to ec2-user so we can delete safely
# sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

# # Delete everything inside acebook EXCEPT the scripts folder and its contents
# find /home/ec2-user/acebook -mindepth 1 ! -path "/home/ec2-user/acebook/scripts*" -exec rm -rf {} +

echo "Cleaning old app directory..."

# Make sure ownership is correct
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

# Remove everything except the scripts directory
find /home/ec2-user/acebook -mindepth 1 ! -path "/home/ec2-user/acebook/scripts" ! -path "/home/ec2-user/acebook/scripts/*" -exec rm -rf {} +

