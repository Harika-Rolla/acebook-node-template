#!/bin/bash
cd /home/ec2-user/acebook
# Kill existing node processes (if re-deploying)
pkill -f "node" || true
# Start the server in the background
nohup npm start > output.log 2>&1 &
