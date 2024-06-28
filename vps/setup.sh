#!/bin/bash

set -e

# Variables
NEW_USER="user_name"
SSH_PUBLIC_KEY="your_public_key_here"
SSH_PORT=19871

# Update and upgrade
apt-get update
apt-get upgrade -y

# Check if unminimize exists and run it if it does
if command -v unminimize &> /dev/null; then
    echo "Running unminimize..."
    unminimize
else
    echo "unminimize command not found. Skipping..."
fi

# Create new user and add to sudo group
adduser --gecos "" --disabled-password $NEW_USER
usermod -aG sudo $NEW_USER

# Set up SSH for new user
mkdir -p /home/$NEW_USER/.ssh
echo "$SSH_PUBLIC_KEY" > /home/$NEW_USER/.ssh/authorized_keys
chmod 700 /home/$NEW_USER/.ssh
chmod 600 /home/$NEW_USER/.ssh/authorized_keys
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.ssh

# Configure sshd
sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i "s/^#*Port.*/Port $SSH_PORT/" /etc/ssh/sshd_config

# Remove or disable cloud-init SSH config
rm -f /etc/ssh/sshd_config.d/50-cloud-init.conf

# Restart sshd
systemctl restart sshd

# Install and configure UFW
apt-get install -y ufw
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow $SSH_PORT/tcp
ufw --force enable

echo "Setup complete. Please test the new SSH connection before closing this session."
