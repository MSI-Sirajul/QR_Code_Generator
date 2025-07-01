#!/bin/bash

# ====== Color Codes ======
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# ====== Banner ======
clear
echo -e "${GREEN}"
echo -e "    _            __        ____             "
echo -e "   (_)___  _____/ /_____ _/ / /__  _____    "
echo -e "  / / __ \/ ___/ __/ __  / / / _ \/ ___/    "
echo -e " / / / / (__  ) /_/ /_/ / / /  __/ /        "
echo -e "/_/_/ /_/____/\__/\__,_/_/_/\___/_/         "
echo -e " ${CYAN}QR Code Generator by M.S.I${NC} ${RED}V_1.2${NC}"
echo

# ====== Required Packages ======
install_pkg() {
    echo -e "${CYAN}Installing $1...${NC}"
    pkg install -y "$1" > /dev/null 2>&1
}
install_pkg git
install_pkg curl
install_pkg qrencode
install_pkg termux-api

# ====== Setup Termux Storage ======
echo -e "${CYAN}Setting up Termux storage...${NC}"
# termux-setup-storage

# ====== Download Main Script from GitHub ======
echo -e "${CYAN}Downloading main QR script...${NC}"
curl -O https://raw.githubusercontent.com/MSI-Sirajul/QR_Code_Generator/main/main.sh

# ====== Move Script to /bin & Make Executable ======
mv main.sh /data/data/com.termux/files/usr/bin/main.sh
chmod +x 777 $PREFIX/bin/main.sh
# ====== Completion Message ======
echo
echo -e "${GREEN}Installation Complete!${NC}"
echo -e "${YELLOW}Just type: ${CYAN}main.sh${YELLOW} to run${NC}"
