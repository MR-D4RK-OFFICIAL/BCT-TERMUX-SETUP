#!/bin/bash

# BCT TERMUX SETUP Installer
# Developer: SOFIKUL ISLAM

echo -e "\033[1;34m"
figlet "BCT INSTALLER"
echo -e "\033[0m"

echo -e "\033[1;33mInstalling BCT Termux Setup...\033[0m"

# Make scripts executable
chmod +x setup.sh
chmod +x tools/*.sh
chmod +x modules/*.sh
chmod +x banner/*.sh

# Create config directory
mkdir -p ~/.bct-config

# Copy config files
cp config/* ~/.bct-config/

# Create shortcut
echo "alias bct='bash ~/BCT-TERMUX-SETUP/setup.sh'" >> ~/.zshrc
echo "alias bct-menu='bash ~/BCT-TERMUX-SETUP/setup.sh'" >> ~/.bashrc

echo -e "\033[1;32m"
echo "✔ BCT Termux Setup Installed Successfully!"
echo ""
echo "📌 Usage:"
echo "   Type 'bct' to open menu"
echo "   Or run: bash setup.sh"
echo -e "\033[0m"
