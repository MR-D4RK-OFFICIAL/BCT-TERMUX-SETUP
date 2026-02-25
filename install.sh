#!/bin/bash

# BCT TERMUX SETUP Installer
# Developer: SOFIKUL ISLAM
# Team: Bangladesh Cyber Troops (BCT)

# Color codes
GREEN='\033[1;32m'
BLUE='\033[1;34m'
RED='\033[1;31m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

clear
echo -e "${BLUE}"
echo "╔════════════════════════════════════╗"
echo "║     BCT TERMUX SETUP INSTALLER    ║"
echo "║  Developer: SOFIKUL ISLAM         ║"
echo "║  Team: Bangladesh Cyber Troops    ║"
echo "╚════════════════════════════════════╝"
echo -e "${NC}"
sleep 2

# Check if setup.sh exists
if [ ! -f "setup.sh" ]; then
    echo -e "${RED}✗ setup.sh not found!${NC}"
    exit 1
fi

# Make setup.sh executable
echo -e "${YELLOW}[*] Making setup.sh executable...${NC}"
chmod +x setup.sh
sleep 1

# Install figlet if not exists
echo -e "${YELLOW}[*] Checking requirements...${NC}"
pkg install -y figlet > /dev/null 2>&1

# Create alias for easy access
echo -e "${YELLOW}[*] Creating shortcut 'bct' command...${NC}"
echo "alias bct='bash ~/BCT-TERMUX-SETUP/setup.sh'" >> ~/.zshrc 2>/dev/null
echo "alias bct='bash ~/BCT-TERMUX-SETUP/setup.sh'" >> ~/.bashrc 2>/dev/null

# Create config directory for future use
mkdir -p ~/.bct-config

# Success message
clear
echo -e "${GREEN}"
figlet -f small "BCT READY" 2>/dev/null || echo "===== BCT READY ====="
echo -e "${NC}"
echo -e "${CYAN}══════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ BCT Termux Setup Installed Successfully!${NC}"
echo -e "${CYAN}══════════════════════════════════════════${NC}"
echo ""
echo -e "${YELLOW}📌 Usage:${NC}"
echo -e "${WHITE}   • ${GREEN}bash setup.sh${NC} - Run setup"
echo -e "${WHITE}   • ${GREEN}./setup.sh${NC}   - Run setup"
echo -e "${WHITE}   • ${GREEN}bct${NC}          - Run setup (after restart)"
echo ""
echo -e "${YELLOW}📌 Quick Start:${NC}"
echo -e "${WHITE}   bash setup.sh${NC}"
echo ""
echo -e "${CYAN}══════════════════════════════════════════${NC}"
echo -e "${PURPLE}   Team BCT - Bangladesh Cyber Troops${NC}"
echo -e "${CYAN}══════════════════════════════════════════${NC}"
