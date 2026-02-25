#!/bin/bash

#============================================#
#     BCT TERMUX SETUP - COMPLETE TOOL      #
#     Developer: SOFIKUL ISLAM               #
#     Team: BCT (Bengal Cyber Team)          #
#     Version: 2.0                           #
#============================================#

# Color Codes
BCT='\033[1;34m'      # Blue
GREEN='\033[1;32m'    # Green
RED='\033[1;31m'      # Red
YELLOW='\033[1;33m'   # Yellow
CYAN='\033[1;36m'     # Cyan
WHITE='\033[1;37m'    # White
PURPLE='\033[1;35m'   # Purple
NC='\033[0m'          # No Color

# Banner Function
show_banner() {
    clear
    echo -e "${PURPLE}"
    figlet -f slant "BCT TERMUX"
    echo -e "${CYAN}========================================="
    echo -e "${GREEN}   Developer: ${WHITE}SOFIKUL ISLAM"
    echo -e "${GREEN}   Team: ${RED}BCT (Bengal Cyber Team)"
    echo -e "${GREEN}   Version: ${YELLOW}2.0"
    echo -e "${CYAN}=========================================${NC}"
    echo ""
    sleep 2
}

# Progress Bar
progress_bar() {
    echo -ne "${YELLOW}["
    for i in {1..50}; do
        echo -ne "="
        sleep 0.02
    done
    echo -e "]${GREEN} 100% Complete${NC}"
}

# Main Menu
main_menu() {
    while true; do
        echo -e "\n${BCT}╔════════════════════════════════════╗${NC}"
        echo -e "${BCT}║     BCT TERMUX SETUP MAIN MENU     ║${NC}"
        echo -e "${BCT}╠════════════════════════════════════╣${NC}"
        echo -e "${BCT}║${GREEN} 1.${WHITE} Full Auto Setup (Complete)   ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 2.${WHITE} Basic Tools Setup            ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 3.${WHITE} Python Environment Setup    ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 4.${WHITE} Web Development Tools       ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 5.${WHITE} Network & Security Tools    ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 6.${WHITE} Database Setup              ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 7.${WHITE} Hacker Tools & Frameworks   ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 8.${WHITE} Terminal Customization      ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 9.${WHITE} About BCT                   ${BCT}║${NC}"
        echo -e "${BCT}║${GREEN} 0.${WHITE} Exit                        ${BCT}║${NC}"
        echo -e "${BCT}╚════════════════════════════════════╝${NC}"
        
        echo -ne "\n${CYAN}➤ Select option: ${NC}"
        read choice
        
        case $choice in
            1) full_setup ;;
            2) basic_setup ;;
            3) python_setup ;;
            4) web_setup ;;
            5) network_setup ;;
            6) database_setup ;;
            7) hacker_tools ;;
            8) customize_terminal ;;
            9) about_bct ;;
            0) exit 0 ;;
            *) echo -e "${RED}✗ Invalid option!${NC}" ;;
        esac
    done
}

# Full Setup Function
full_setup() {
    echo -e "\n${YELLOW}⚡ BCT Full Setup Started...${NC}"
    progress_bar
    
    # Call all setup functions
    basic_setup
    python_setup
    web_setup
    network_setup
    database_setup
    hacker_tools
    customize_terminal
    
    echo -e "\n${GREEN}✔ BCT Full Setup Complete!${NC}"
    echo -e "${CYAN}📢 Please restart Termux${NC}"
    sleep 3
}

# Basic Setup
basic_setup() {
    echo -e "\n${BCT}[*] Basic Tools Installation Starting...${NC}"
    
    # Storage Permission
    echo -ne "${YELLOW}➤ Grant storage permission? (y/n): ${NC}"
    read perm
    if [ "$perm" = "y" ]; then
        termux-setup-storage
        sleep 2
    fi
    
    # Update & Upgrade
    echo -e "${CYAN}➤ Updating packages...${NC}"
    pkg update -y && pkg upgrade -y
    
    # Essential Packages
    echo -e "${CYAN}➤ Installing essential packages...${NC}"
    packages=(
        "git" "wget" "curl" "nano" "vim" "zip" "unzip"
        "tar" "htop" "neofetch" "figlet" "toilet" "which"
        "man" "tree" "termux-api" "termux-services" "tmux"
        "zsh" "fish" "openssh"
    )
    
    total=${#packages[@]}
    current=0
    
    for pkg in "${packages[@]}"; do
        current=$((current + 1))
        echo -ne "\r${GREEN}Installing: $pkg [$current/$total]${NC}"
        pkg install -y $pkg > /dev/null 2>&1
    done
    
    echo -e "\n${GREEN}✔ Basic Setup Complete!${NC}"
    sleep 2
}

# Python Setup
python_setup() {
    echo -e "\n${BCT}[*] Python Environment Setup...${NC}"
    
    # Install Python
    pkg install -y python python2
    
    # Upgrade pip
    pip install --upgrade pip
    
    # Python packages
    echo -e "${CYAN}➤ Installing Python packages...${NC}"
    pip_packages=(
        "requests" "beautifulsoup4" "selenium" "scapy"
        "colorama" "termcolor" "pyfiglet" "tqdm"
        "numpy" "pandas" "matplotlib" "flask"
        "django" "paramiko" "cryptography" "pycrypto"
        "scapy" "pynput" "opencv-python" "pillow"
        "asyncio" "aiohttp" "fastapi" "uvicorn"
        "sqlalchemy" "pymongo" "redis" "mysql-connector-python"
        "bcrypt" "jwt" "oauthlib" "python-telegram-bot"
        "discord.py" "twilio" "youtube-dl" "pytube"
    )
    
    for package in "${pip_packages[@]}"; do
        echo -e "${WHITE}Installing: $package${NC}"
        pip install $package > /dev/null 2>&1
    done
    
    echo -e "${GREEN}✔ Python Setup Complete!${NC}"
    sleep 2
}

# Web Development Tools
web_setup() {
    echo -e "\n${BCT}[*] Web Development Tools Setup...${NC}"
    
    # Install Web Servers
    pkg install -y apache2 nginx php php-apache php-fpm
    
    # Node.js & npm
    pkg install -y nodejs npm
    
    # Global npm packages
    npm install -g yarn pm2 nodemon express http-server create-react-app
    npm install -g @angular/cli @vue/cli next react-native-cli
    
    # PHP extensions
    pkg install -y php-mbstring php-curl php-gd php-xml php-zip php-mysql
    
    echo -e "${GREEN}✔ Web Tools Setup Complete!${NC}"
    sleep 2
}

# Network & Security Tools
network_setup() {
    echo -e "\n${BCT}[*] Network & Security Tools...${NC}"
    
    # Network tools
    pkg install -y net-tools nmap traceroute dnsutils inetutils
    pkg install -y tcpdump wireshark netcat-openbsd
    pkg install -y hydra john aircrack-ng sqlmap metasploit
    
    # Additional security tools
    pkg install -y exploitdb searchsploit nikto wpscan
    pkg install -y hashcat crunch cupp wordlists
    
    echo -e "${GREEN}✔ Network Tools Setup Complete!${NC}"
    sleep 2
}

# Database Setup
database_setup() {
    echo -e "\n${BCT}[*] Database Setup...${NC}"
    
    # Install databases
    pkg install -y mariadb postgresql redis mongodb
    
    # Start MySQL
    mysql_install_db > /dev/null 2>&1
    mysqld_safe > /dev/null 2>&1 &
    
    # Secure MySQL installation
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'bct123';"
    mysql -e "DELETE FROM mysql.user WHERE User='';"
    mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
    mysql -e "DROP DATABASE IF EXISTS test;"
    mysql -e "FLUSH PRIVILEGES;"
    
    echo -e "${GREEN}✔ Database Setup Complete!${NC}"
    echo -e "${YELLOW}MySQL Root Password: bct123${NC}"
    sleep 3
}

# Hacker Tools
hacker_tools() {
    echo -e "\n${BCT}[*] Installing Hacker Tools & Frameworks...${NC}"
    
    # Clone popular hacking tools
    cd ~
    
    echo -e "${CYAN}➤ Cloning tools from GitHub...${NC}"
    
    # Tool list
    declare -A tools=(
        ["Tool-X"]="https://github.com/rajkumardusad/Tool-X.git"
        ["Hack-Tools"]="https://github.com/Z4nzu/hackingtool.git"
        ["ReconDog"]="https://github.com/s0md3v/ReconDog.git"
        ["Striker"]="https://github.com/s0md3v/Striker.git"
        ["PhoneInfoga"]="https://github.com/sundowndev/PhoneInfoga.git"
        ["Instagram-Bot"]="https://github.com/insomniacsed/insomniac.git"
        ["Facebook-Brute"]="https://github.com/IAmBlackHacker/Facebook-BruteForce.git"
        ["Cam-Hackers"]="https://github.com/AngelSecurityTeam/Cam-Hackers.git"
        ["DDoS-Tools"]="https://github.com/palahsu/DDoS-Ripper.git"
        ["WordPress-Scanner"]="https://github.com/wpscanteam/wpscan.git"
    )
    
    for tool in "${!tools[@]}"; do
        echo -e "${WHITE}Downloading: $tool${NC}"
        git clone ${tools[$tool]} ~/$tool > /dev/null 2>&1
    done
    
    echo -e "${GREEN}✔ Hacker Tools Setup Complete!${NC}"
    sleep 2
}

# Terminal Customization
customize_terminal() {
    echo -e "\n${BCT}[*] Terminal Customization...${NC}"
    
    # Install ZSH and Oh-My-Zsh
    pkg install -y zsh
    
    # Install Oh-My-Zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    
    # Install Powerlevel10k theme
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    
    # Install plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    
    # Configure .zshrc
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
    
    # Add BCT banner
    echo 'echo ""' >> ~/.zshrc
    echo 'figlet -f slant "BCT TERMUX"' >> ~/.zshrc
    echo 'echo -e "\033[1;32mWelcome to BCT Termux, Developer: SOFIKUL ISLAM\033[0m"' >> ~/.zshrc
    echo 'neofetch' >> ~/.zshrc
    
    # Change default shell
    chsh -s zsh
    
    echo -e "${GREEN}✔ Terminal Customization Complete!${NC}"
    sleep 2
}

# About BCT
about_bct() {
    clear
    echo -e "${PURPLE}"
    figlet -f big "BCT"
    echo -e "${CYAN}══════════════════════════════════════════${NC}"
    echo -e "${GREEN}Team Name: ${WHITE}Bengal Cyber Team (BCT)${NC}"
    echo -e "${GREEN}Developer: ${WHITE}SOFIKUL ISLAM${NC}"
    echo -e "${GREEN}Version: ${WHITE}2.0${NC}"
    echo -e "${GREEN}GitHub: ${WHITE}https://github.com/bct-team${NC}"
    echo -e "${GREEN}Telegram: ${WHITE}t.me/bct_community${NC}"
    echo -e "${GREEN}Website: ${WHITE}www.bengalcyberteam.com${NC}"
    echo -e "${CYAN}══════════════════════════════════════════${NC}"
    echo -e "${YELLOW}"
    echo "📌 Features:"
    echo "✔ 300+ Tools & Packages"
    echo "✔ Automated Setup"
    echo "✔ Hacking Frameworks"
    echo "✔ Web Development"
    echo "✔ Database Management"
    echo "✔ Network Security"
    echo "✔ Terminal Customization"
    echo -e "${CYAN}══════════════════════════════════════════${NC}"
    echo -e "${WHITE}Press Enter to continue...${NC}"
    read
}

# Start the script
show_banner
main_menu
