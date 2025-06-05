#!/bin/bash
# echo "Cleaning old app directory..."

# # Change ownership to ec2-user so we can delete safely
# sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

# # Delete everything inside acebook EXCEPT the scripts folder and its contents
# find /home/ec2-user/acebook -mindepth 1 ! -path "/home/ec2-user/acebook/scripts*" -exec rm -rf {} +

# echo "Cleaning old app directory..."

# # Make sure ownership is correct
# sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

# # Remove everything except the scripts directory
# find /home/ec2-user/acebook -mindepth 1 ! -path "/home/ec2-user/acebook/scripts" ! -path "/home/ec2-user/acebook/scripts/*" -exec rm -rf {} +

#!/bin/bash
echo "Cleaning old app directory..."

# Kill any node processes specifically running from acebook directory
echo "Stopping Node.js processes..."
pkill -f "node.*acebook" || true
pkill -f "nodemon.*acebook" || true
pkill node || true
sleep 5  # Longer wait for processes to fully stop

# Make sure ownership is correct, only if directory exists
if [ -d "/home/ec2-user/acebook" ]; then
  sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

  # Remove everything except the scripts directory and its contents
  find /home/ec2-user/acebook -mindepth 1 \
    ! -path "/home/ec2-user/acebook/scripts" \
    ! -path "/home/ec2-user/acebook/scripts/*" \
    -exec rm -rf {} +
else
  echo "/home/ec2-user/acebook does not exist, skipping cleanup."
fi


