#!/bin/bash

# Ensure the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (use sudo)"
    exit
fi

echo "Starting setup of a new Ubuntu machine..."

# Update and upgrade system
echo "Updating and upgrading the system..."
apt update && apt upgrade -y

# Install Nala package manager for faster and more user-friendly package management
echo "Installing Nala..."
apt install -y nala
nala update && nala upgrade -y

# Install daily user software
echo "Installing daily user software..."
nala install -y \
    neofetch \
    cowsay \
    bpytop \
    htop \
    git \
    docker.io \
    vim \
    gufw \
    curl \
    wget \
    nginx \
    cmatrix \
    figlet \
    lolcat

# Enable and start Docker service
echo "Enabling and starting Docker service..."
systemctl enable docker
systemctl start docker

# Print a message to verify installation
echo "Installation complete! Installed software includes:"
neofetch
echo "Software installed successfully!" | cowsay | lolcat

# Reboot system
echo "Rebooting the system in 10 seconds. Press Ctrl+C to cancel."
sleep 10
reboot
