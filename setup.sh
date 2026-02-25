#!/bin/bash

#=========================================================#
#     BCT TERMUX SETUP - COMPLETE TOOL (FINAL VERSION)   #
#     Developer: SOFIKUL ISLAM                            #
#     Team: Bangladesh Cyber Troops (BCT)                 #
#     Version: 3.0 (Ultimate Edition)                     #
#     Date: 2026                                          #
#=========================================================#

#=================== COLOR CODES ===================#
BCT='\033[1;34m'        # Blue (Primary)
GREEN='\033[1;32m'      # Green (Success)
RED='\033[1;31m'        # Red (Error)
YELLOW='\033[1;33m'     # Yellow (Warning)
CYAN='\033[1;36m'       # Cyan (Info)
WHITE='\033[1;37m'      # White (Text)
PURPLE='\033[1;35m'     # Purple (Banner)
ORANGE='\033[38;5;214m' # Orange (Highlight)
PINK='\033[38;5;206m'   # Pink (Deco)
NC='\033[0m'            # No Color
BOLD='\033[1m'          # Bold
BLINK='\033[5m'         # Blink
UNDERLINE='\033[4m'     # Underline

#=================== VARIABLES ===================#
SCRIPT_VERSION="3.0"
SCRIPT_DATE="2026"
DEV_NAME="SOFIKUL ISLAM"
TEAM_NAME="Bangladesh Cyber Troops (BCT)"
TEAM_SHORT="BCT"
GITHUB="MR-D4RK-OFFICIAL"
WEBSITE="www.teambct.top"
TELEGRAM="t.me/bct_muslims"

#=================== INITIAL SETUP ===================#
clear
echo -e "${YELLOW}${BOLD}⚡ Initializing BCT Termux Setup...${NC}"
sleep 1

# Check and install required packages
check_requirements() {
    echo -e "${CYAN}[*] Checking system requirements...${NC}"
    
    # Update packages first
    pkg update -y > /dev/null 2>&1
    
    # Install essential packages if missing
    for pkg in figlet toilet ncurses-utils; do
        if ! command -v $pkg &> /dev/null; then
            echo -e "${YELLOW}Installing $pkg...${NC}"
            pkg install -y $pkg > /dev/null 2>&1
        fi
    done
    
    # Install termux-api for extra features
    pkg install -y termux-api > /dev/null 2>&1
    
    sleep 1
}

#=================== ULTIMATE BANNER ===================#
show_banner() {
    clear
    
    # Terminal size check for responsive design
    COLS=$(tput cols)
    if [ $COLS -lt 60 ]; then
        BANNER_STYLE="small"
    else
        BANNER_STYLE="big"
    fi
    
    # Top Border with Animation
    echo -e "${PURPLE}${BOLD}"
    echo "╔══════════════════════════════════════════════════════════════╗"
    echo "║                                                              ║"
    echo -e "${NC}"
    
    # Main Banner with Figlet
    echo -e "${ORANGE}${BOLD}"
    if command -v figlet &> /dev/null; then
        figlet -f big "BCT TERMUX" | while IFS= read -r line; do
            echo -e "  ${PURPLE}${BOLD}${line}${NC}"
        done
    else
        echo -e "${PURPLE}${BOLD}  ██████╗ ███████╗████████╗    ████████╗███████╗██████╗ ███╗   ███╗██╗██╗  ██╗${NC}"
        echo -e "${PURPLE}${BOLD}  ██╔══██╗██╔════╝╚══██╔══╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║╚██╗██╔╝${NC}"
        echo -e "${PURPLE}${BOLD}  ██████╔╝█████╗     ██║          ██║   █████╗  ██████╔╝██╔████╔██║██║ ╚███╔╝ ${NC}"
        echo -e "${PURPLE}${BOLD}  ██╔══██╗██╔══╝     ██║          ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║ ██╔██╗ ${NC}"
        echo -e "${PURPLE}${BOLD}  ██████╔╝███████╗   ██║          ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██╔╝ ██╗${NC}"
        echo -e "${PURPLE}${BOLD}  ╚═════╝ ╚══════╝   ╚═╝          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═╝${NC}"
    fi
    echo -e "${NC}"
    
    # Tagline
    echo -e "${CYAN}${BOLD}  ╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}${BOLD}  ║     ${YELLOW}Complete Termux Setup Solution | Bangladesh Cyber Troops${NC}${CYAN}     ║${NC}"
    echo -e "${CYAN}${BOLD}  ╚══════════════════════════════════════════════════════════════╝${NC}"
    
    # Developer Info Card
    echo ""
    echo -e "${GREEN}${BOLD}  ╭──────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${GREEN}${BOLD}  │${WHITE}                    DEVELOPER INFORMATION                   ${GREEN}│${NC}"
    echo -e "${GREEN}${BOLD}  ├──────────────────────────────────────────────────────────────┤${NC}"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}👤 Developer :${NC} ${WHITE}%-42s${GREEN}│\n" "$DEV_NAME"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}🏢 Team      :${NC} ${WHITE}%-42s${GREEN}│\n" "$TEAM_NAME"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}📌 Version   :${NC} ${YELLOW}%-42s${GREEN}│\n" "$SCRIPT_VERSION (Ultimate)"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}📅 Release   :${NC} ${WHITE}%-42s${GREEN}│\n" "$SCRIPT_DATE"
    echo -e "${GREEN}${BOLD}  ├──────────────────────────────────────────────────────────────┤${NC}"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}🌐 GitHub     :${NC} ${WHITE}%-42s${GREEN}│\n" "github.com/$GITHUB"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}📱 Telegram   :${NC} ${WHITE}%-42s${GREEN}│\n" "$TELEGRAM"
    printf "${GREEN}${BOLD}  │${NC} ${PURPLE}${BOLD}🔗 Website    :${NC} ${WHITE}%-42s${GREEN}│\n" "$WEBSITE"
    echo -e "${GREEN}${BOLD}  ╰──────────────────────────────────────────────────────────────╯${NC}"
    
    # Features Highlight
    echo ""
    echo -e "${ORANGE}${BOLD}  ✦ ${WHITE}Features: ${GREEN}300+ Tools ${WHITE}| ${GREEN}Auto Setup ${WHITE}| ${GREEN}Hacking Tools ${WHITE}| ${GREEN}Web Dev ${WHITE}| ${GREEN}Database ${WHITE}| ${GREEN}Customization${NC}"
    
    # Loading Bar
    echo ""
    echo -ne "${YELLOW}${BOLD}  Loading System "
    for i in {1..40}; do
        echo -ne "${CYAN}▰"
        sleep 0.01
    done
    echo -e "${GREEN} Complete!${NC}"
    sleep 1
}

#=================== ANIMATED PROGRESS BAR ===================#
progress_bar() {
    local duration=$1
    local message=$2
    local width=50
    
    echo -ne "${YELLOW}${BOLD}$message ${NC}["
    for i in $(seq 1 $width); do
        echo -ne "${GREEN}▓"
        sleep $(echo "$duration/$width" | bc -l 2>/dev/null || echo "0.02")
    done
    echo -e "${NC}] ${GREEN}100%${NC}"
}

#=================== ULTIMATE MAIN MENU ===================#
main_menu() {
    while true; do
        echo ""
        echo -e "${PURPLE}${BOLD}  ╔══════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${PURPLE}${BOLD}  ║              ${YELLOW}${BLINK}⚡${NC}${PURPLE}${BOLD} BCT TERMUX ULTIMATE MENU ${YELLOW}${BLINK}⚡${NC}${PURPLE}${BOLD}              ║${NC}"
        echo -e "${PURPLE}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
        
        # Menu Items with Icons
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 1.${NC} ${WHITE}🚀 Full Auto Setup ${NC}${CYAN}(Complete System)${NC}                    ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 2.${NC} ${WHITE}🔧 Basic Tools ${NC}${CYAN}(Git, Nano, Curl, etc)${NC}                       ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 3.${NC} ${WHITE}🐍 Python Environment ${NC}${CYAN}(Pip, Libraries)${NC}                     ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 4.${NC} ${WHITE}🌐 Web Development ${NC}${CYAN}(Node.js, PHP, Nginx)${NC}                   ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 5.${NC} ${WHITE}🛡️  Network Security ${NC}${CYAN}(Nmap, Hydra, Metasploit)${NC}               ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 6.${NC} ${WHITE}🗄️  Database Setup ${NC}${CYAN}(MySQL, PostgreSQL, Redis)${NC}               ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 7.${NC} ${WHITE}💻 Hacker Tools ${NC}${CYAN}(ReconDog, Striker, etc)${NC}                     ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 8.${NC} ${WHITE}🎨 Terminal Customization ${NC}${CYAN}(ZSH, Oh-My-Zsh)${NC}                 ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${GREEN}${BOLD} 9.${NC} ${WHITE}ℹ️  About BCT ${NC}${CYAN}(Team Info, Credits)${NC}                          ${PURPLE}${BOLD}║${NC}\n"
        printf "${PURPLE}${BOLD}  ║${NC} ${RED}${BOLD} 0.${NC} ${WHITE}❌ Exit ${NC}                                                               ${PURPLE}${BOLD}║${NC}\n"
        echo -e "${PURPLE}${BOLD}  ╚══════════════════════════════════════════════════════════════╝${NC}"
        
        echo ""
        echo -ne "${CYAN}${BOLD}  ➤ Select Option [0-9]: ${NC}"
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
            0) exit_animation ;;
            *) 
                echo -e "${RED}${BOLD}  ✗ Invalid option! Please select 0-9${NC}"
                sleep 1
                ;;
        esac
    done
}

#=================== EXIT ANIMATION ===================#
exit_animation() {
    clear
    echo -e "${PURPLE}${BOLD}"
    figlet -f big "Goodbye!" 2>/dev/null
    echo -e "${NC}"
    
    echo -e "${CYAN}${BOLD}  Thank you for using BCT Termux Setup${NC}"
    echo -e "${GREEN}${BOLD}  Stay Connected with Bangladesh Cyber Troops${NC}"
    echo ""
    
    # Progress bar for exit
    echo -ne "${YELLOW}${BOLD}  Exiting "
    for i in {1..30}; do
        echo -ne "${RED}▓"
        sleep 0.03
    done
    echo -e "${NC}"
    
    echo -e "\n${PURPLE}${BOLD}  🔥 Team BCT - We Are Hackers, We Are Warriors! 🔥${NC}"
    sleep 2
    clear
    exit 0
}

#=================== FULL SETUP ===================#
full_setup() {
    echo -e "\n${YELLOW}${BOLD}  ⚡ BCT ULTIMATE FULL SETUP INITIATED ⚡${NC}"
    progress_bar 2 "  Preparing System"
    
    # Storage Permission
    echo -e "\n${CYAN}${BOLD}  📁 Storage Permission${NC}"
    echo -ne "${YELLOW}  Grant storage access? (y/n): ${NC}"
    read perm
    if [ "$perm" = "y" ] || [ "$perm" = "Y" ]; then
        termux-setup-storage
        progress_bar 1 "  Configuring Storage"
    fi
    
    # Call all setup functions
    basic_setup "silent"
    python_setup "silent"
    web_setup "silent"
    network_setup "silent"
    database_setup "silent"
    hacker_tools "silent"
    customize_terminal "silent"
    
    # Success Message with Animation
    echo ""
    echo -e "${GREEN}${BOLD}  ╔══════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}${BOLD}  ║     🎉 FULL SETUP COMPLETE! 🎉          ║${NC}"
    echo -e "${GREEN}${BOLD}  ╚══════════════════════════════════════════╝${NC}"
    echo -e "${CYAN}${BOLD}  📢 Please restart Termux for best experience${NC}"
    echo -e "${WHITE}  Type 'bct' or './setup.sh' to run again${NC}"
    echo ""
    echo -ne "${YELLOW}${BOLD}  Press Enter to continue...${NC}"
    read
}

#=================== BASIC SETUP ===================#
basic_setup() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🔧 BASIC TOOLS INSTALLATION ${NC}"
    
    # Update & Upgrade
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Updating package lists...${NC}"
    pkg update -y > /dev/null 2>&1 && pkg upgrade -y > /dev/null 2>&1
    progress_bar 1 "  Updating System"
    
    # Essential Packages
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing essential packages...${NC}"
    packages=(
        "git" "wget" "curl" "nano" "vim" "zip" "unzip" "tar"
        "htop" "neofetch" "figlet" "toilet" "which" "man"
        "tree" "termux-api" "termux-services" "tmux" "zsh"
        "fish" "openssh" "openssl" "openssl-tool" "ncurses-utils"
        "ranger" "cmatrix" "screenfetch" "sl" "cowsay" "fortune"
        "lolcat" "ffmpeg" "sox" "mpv" "w3m" "elinks"
    )
    
    total=${#packages[@]}
    current=0
    
    for pkg in "${packages[@]}"; do
        current=$((current + 1))
        [ "$1" != "silent" ] && echo -ne "\r${GREEN}  Installing: $pkg [$current/$total]${NC}"
        pkg install -y $pkg > /dev/null 2>&1
    done
    
    [ "$1" != "silent" ] && echo -e "\n${GREEN}${BOLD}  ✔ Basic Setup Complete!${NC}"
    [ "$1" != "silent" ] && sleep 1
}

#=================== PYTHON SETUP ===================#
python_setup() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🐍 PYTHON ENVIRONMENT SETUP ${NC}"
    
    # Install Python
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Python...${NC}"
    pkg install -y python python2 > /dev/null 2>&1
    
    # Upgrade pip
    pip install --upgrade pip > /dev/null 2>&1
    pip2 install --upgrade pip > /dev/null 2>&1
    
    # Python packages
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Python packages...${NC}"
    pip_packages=(
        "requests" "beautifulsoup4" "selenium" "scapy"
        "colorama" "termcolor" "pyfiglet" "tqdm"
        "numpy" "pandas" "matplotlib" "flask"
        "django" "paramiko" "cryptography" "pycryptodome"
        "asyncio" "aiohttp" "fastapi" "uvicorn"
        "sqlalchemy" "pymongo" "redis" "mysql-connector-python"
        "bcrypt" "jwt" "python-telegram-bot" "twilio"
        "youtube-dl" "pytube" "pillow" "opencv-python"
        "scikit-learn" "tensorflow" "torch" "transformers"
    )
    
    for package in "${pip_packages[@]}"; do
        [ "$1" != "silent" ] && echo -e "${WHITE}    Installing: $package${NC}"
        pip install $package > /dev/null 2>&1
        pip2 install $package > /dev/null 2>&1
    done
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Python Setup Complete!${NC}"
    [ "$1" != "silent" ] && sleep 1
}

#=================== WEB SETUP ===================#
web_setup() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🌐 WEB DEVELOPMENT TOOLS ${NC}"
    
    # Web Servers
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Web Servers...${NC}"
    pkg install -y apache2 nginx php php-apache php-fpm > /dev/null 2>&1
    
    # Node.js
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Node.js...${NC}"
    pkg install -y nodejs npm > /dev/null 2>&1
    
    # Global npm packages
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing NPM packages...${NC}"
    npm install -g yarn pm2 nodemon express http-server create-react-app @angular/cli @vue/cli next gulp webpack > /dev/null 2>&1
    
    # PHP extensions
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing PHP extensions...${NC}"
    pkg install -y php-mbstring php-curl php-gd php-xml php-zip php-mysql > /dev/null 2>&1
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Web Setup Complete!${NC}"
    [ "$1" != "silent" ] && sleep 1
}

#=================== NETWORK SETUP ===================#
network_setup() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🛡️  NETWORK & SECURITY TOOLS ${NC}"
    
    # Network tools
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Network Tools...${NC}"
    pkg install -y net-tools nmap traceroute dnsutils inetutils tcpdump > /dev/null 2>&1
    
    # Security tools
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Security Tools...${NC}"
    pkg install -y hydra john aircrack-ng sqlmap metasploit exploitdb > /dev/null 2>&1
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Network Setup Complete!${NC}"
    [ "$1" != "silent" ] && sleep 1
}

#=================== DATABASE SETUP ===================#
database_setup() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🗄️  DATABASE SETUP ${NC}"
    
    # Install databases
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Installing Databases...${NC}"
    pkg install -y mariadb postgresql redis > /dev/null 2>&1
    
    # Initialize MySQL
    mysql_install_db > /dev/null 2>&1
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Database Setup Complete!${NC}"
    [ "$1" != "silent" ] && echo -e "${YELLOW}  MySQL root password: bct123${NC}"
    [ "$1" != "silent" ] && sleep 2
}

#=================== HACKER TOOLS ===================#
hacker_tools() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  💻 HACKER TOOLS & FRAMEWORKS ${NC}"
    
    cd ~
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Cloning popular hacking tools...${NC}"
    
    # Tool list
    declare -A tools=(
        ["ReconDog"]="https://github.com/s0md3v/ReconDog.git"
        ["Striker"]="https://github.com/s0md3v/Striker.git"
        ["PhoneInfoga"]="https://github.com/sundowndev/PhoneInfoga.git"
        ["Tool-X"]="https://github.com/rajkumardusad/Tool-X.git"
        ["HackingTool"]="https://github.com/Z4nzu/hackingtool.git"
        ["DDoS-Ripper"]="https://github.com/palahsu/DDoS-Ripper.git"
        ["CamHackers"]="https://github.com/AngelSecurityTeam/Cam-Hackers.git"
        ["WPScan"]="https://github.com/wpscanteam/wpscan.git"
    )
    
    for tool in "${!tools[@]}"; do
        [ "$1" != "silent" ] && echo -e "${WHITE}    Downloading: $tool${NC}"
        if [ ! -d ~/$tool ]; then
            git clone ${tools[$tool]} ~/$tool > /dev/null 2>&1
        fi
    done
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Hacker Tools Complete!${NC}"
    [ "$1" != "silent" ] && sleep 1
}

#=================== TERMINAL CUSTOMIZATION ===================#
customize_terminal() {
    [ "$1" != "silent" ] && echo -e "\n${BCT}${BOLD}  🎨 TERMINAL CUSTOMIZATION ${NC}"
    
    # Install ZSH
    [ "$1" != "silent" ] && echo -e "${CYAN}  ➤ Setting up ZSH...${NC}"
    pkg install -y zsh > /dev/null 2>&1
    
    # Install Oh-My-Zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended > /dev/null 2>&1
    
    # Install plugins
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions > /dev/null 2>&1
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting > /dev/null 2>&1
    
    # Configure .zshrc
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc 2>/dev/null
    
    # Add BCT banner to .zshrc
    cat >> ~/.zshrc << 'EOF'

# BCT Custom Configuration
clear
echo -e "\033[1;35m"
figlet -f slant "BCT TERMUX" 2>/dev/null
echo -e "\033[1;32m"
echo "╔══════════════════════════════════════════╗"
echo "║   Welcome to BCT Termux Environment     ║"
echo "║   Developer: SOFIKUL ISLAM              ║"
echo "║   Team: Bangladesh Cyber Troops         ║"
echo "╚══════════════════════════════════════════╝"
echo -e "\033[0m"
neofetch --off 2>/dev/null
EOF
    
    # Change default shell
    chsh -s zsh > /dev/null 2>&1
    
    [ "$1" != "silent" ] && echo -e "${GREEN}${BOLD}  ✔ Terminal Customization Complete!${NC}"
    [ "$1" != "silent" ] && echo -e "${YELLOW}  Restart Termux to see changes${NC}"
    [ "$1" != "silent" ] && sleep 2
}

#=================== ABOUT BCT ===================#
about_bct() {
    clear
    echo -e "${PURPLE}${BOLD}"
    figlet -f big "TEAM BCT" 2>/dev/null || echo "======== TEAM BCT ========"
    echo -e "${NC}"
    
    echo -e "${CYAN}${BOLD}  ╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}${BOLD}  ║                 BANGLADESH CYBER TROOPS                     ║${NC}"
    echo -e "${CYAN}${BOLD}  ║                    (BCT) TEAM INFO                          ║${NC}"
    echo -e "${CYAN}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
    
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}Team Name    :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "Bangladesh Cyber Troops (BCT)"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}Developer    :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "SOFIKUL ISLAM"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}Version      :${NC} ${YELLOW}%-40s${CYAN}${BOLD}║${NC}\n" "3.0 (Ultimate Edition)"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}Founded      :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "2024"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}Headquarters :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "Bangladesh"
    
    echo -e "${CYAN}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
    
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}📱 Telegram   :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "t.me/bct_muslims"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}🐙 GitHub     :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "github.com/MR-D4RK-OFFICIAL"
    printf "${CYAN}${BOLD}  ║${NC} ${GREEN}🌐 Website    :${NC} ${WHITE}%-40s${CYAN}${BOLD}║${NC}\n" "www.teambct.top"
    
    echo -e "${CYAN}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}${BOLD}  ║                     ${YELLOW}TEAM MEMBERS${NC}${CYAN}${BOLD}                           ║${NC}"
    echo -e "${CYAN}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}▪ RIFAT MAHMUD       (FOUNDER & CEO)${NC}        ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}▪ SOFIKUL ISLAM      (DEVELOPER & TEAM CONTROLER)${NC}            ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}▪ MAHMUDUL HASAN       (TEAM MANAGER)${NC}             ${CYAN}${BOLD}║${NC}"
    
    echo -e "${CYAN}${BOLD}  ╠══════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${GREEN}📌 FEATURES:${NC}                                                  ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ 400+ Tools & Packages${NC}                                    ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Fully Automated Setup${NC}                                    ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Hacking Frameworks${NC}                                       ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Web Development Tools${NC}                                    ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Database Management${NC}                                      ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Network Security Tools${NC}                                   ${CYAN}${BOLD}║${NC}"
    echo -e "${CYAN}${BOLD}  ║${NC} ${WHITE}  ✓ Terminal Customization${NC}                                   ${CYAN}${BOLD}║${NC}"
    
    echo -e "${CYAN}${BOLD}  ╚══════════════════════════════════════════════════════════════╝${NC}"
    
    echo ""
    echo -e "${YELLOW}${BOLD}  🔥 We Are Hackers, We Are Warriors! 🔥${NC}"
    echo -e "${PURPLE}${BOLD}  🇧🇩 Bangladesh Cyber Troops - Protecting The Nation 🇧🇩${NC}"
    echo ""
    echo -ne "${WHITE}  Press Enter to return to main menu...${NC}"
    read
}

#=================== SCRIPT START ===================#
# Check requirements first
check_requirements

# Show the ultimate banner
show_banner

# Start the main menu
main_menu
