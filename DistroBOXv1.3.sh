#!/bin/bash
# ==========================================
# Tool Name: DistroBOX v1.3 (Merged Version)
# Created by: abhihack12 (abhipandey)
# Description: Ultimate Linux Installer for Termux
# ==========================================

# Colors (Charming Palette)
RED="\e[91m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
MAGENTA="\e[95m"
CYAN="\e[96m"
WHITE="\e[97m"
RESET="\e[0m"

# License Verification Function
check_license() {
    clear
    echo -e "${CYAN}"
    echo "  ╔════════════════════════════════════════╗"
    echo "  ║         LICENSE VERIFICATION           ║"
    echo "  ╚════════════════════════════════════════╝${RESET}"
    echo ""
    echo -e "${YELLOW}[!] This tool requires a valid license key to run.${RESET}"
    echo ""
    echo -ne "${BLUE}# Enter License Key: ${RESET}"
    read -s input_key
    echo ""

    if [ "$input_key" = "linuxinstaller" ]; then
        echo -e "\n${GREEN}[✓] Access Granted! Loading DistroBOX...${RESET}"
        sleep 2
    else
        echo -e "\n${RED}[✗] Invalid License Key! Access Denied.${RESET}"
        echo -e "${RED}[!] Contact abhihack12 for the key.${RESET}\n"
        exit 1
    fi
}

banner(){
    clear
    echo -e "${BLUE}"
    echo "________  .__          __               ___.                 "
    echo "\______ \ |__| _______/  |________  ____\_ |__   _______  ___"
    echo " |    |  \|  |/  ___/\   __\_  __ \/  _ \| __ \ /  _ \  \/  /"
    echo " |    \`   \  |\___ \  |  |  |  | \(  <_> ) \_\ (  <_> >    < "
    echo "/_______  /__/____  > |__|  |__|   \____/|___  /\____/__/\_ \\"
    echo "        \/        \/                         \/            \/"
    echo -e "${RESET}"
    echo -e "${RED}             ★ script by ♡ abhihack12 ★★ AP"
    echo -e "                   ☆☆ abhipandey ☆ \$AP${RESET}"
    echo -e "${CYAN}                [ DistroBOX v1.3 - Mega ]${RESET}"
    echo ""
}

menu(){
    echo -e "${GREEN}  ⚡───────────────── [ Options ] ─────────────────⚡${RESET}"
    echo ""
    echo -e "     ${RED}[${GREEN}1${RED}]${CYAN} Kali Linux           ${RED}[${GREEN}8${RED}]${CYAN} Blackbox"
    echo -e "     ${RED}[${GREEN}2${RED}]${CYAN} Parrot OS            ${RED}[${GREEN}9${RED}]${CYAN} OpenSUSE Tumbleweed"
    echo -e "     ${RED}[${GREEN}3${RED}]${CYAN} Ubuntu               ${RED}[${GREEN}10${RED}]${CYAN} Arch Linux"
    echo -e "     ${RED}[${GREEN}4${RED}]${CYAN} Debian               ${RED}[${GREEN}11${RED}]${CYAN} Black Arch"
    echo -e "     ${RED}[${GREEN}5${RED}]${CYAN} Fedora               ${RED}[${GREEN}12${RED}]${CYAN} Alpine Linux"
    echo -e "     ${RED}[${GREEN}6${RED}]${CYAN} CentOS               ${RED}[${GREEN}13${RED}]${CYAN} Void Linux"
    echo -e "     ${RED}[${GREEN}7${RED}]${CYAN} OpenSUSE Leap        ${RED}[${GREEN}14${RED}]${CYAN} Exit"
    echo ""
    echo -e "${GREEN}  ⚡─────────────────────────────────────────────⚡${RESET}"
    echo ""
    echo -ne "${YELLOW}# SELECT OPTION ❯ ${RESET}"
    read optnz

    case $optnz in
        1) kali ;;
        2) parrot ;;
        3) Ubuntu ;;
        4) Debian ;;
        5) Fedora ;;
        6) Cent_os ;;
        7) Open_SUSE ;;
        8) blackbox ;;
        9) open_suse_tumbleweed ;;
        10) arch_linux ;;
        11) black_arch ;;
        12) alpine ;;
        13) void_linux ;;
        14) 
            echo -e "\n${MAGENTA}[❤] Thanks for using DistroBOX! Desktop Environment version coming soon! Bye Bye...${RESET}\n"
            exit 0 
            ;;
        *) 
            echo -e "\n${RED}[!] Invalid Choice! Please try again...${RESET}"
            sleep 1.5
            banner
            menu
            ;;
    esac
}

install_dependencies() {
    local extra_pkg=$1
    echo -e "\n${YELLOW}[*] Preparing environment and dependencies...${RESET}"
    pkg install wget openssl-tool proot $extra_pkg -y && hash -r
}

press_enter() {
    echo ""
    echo -ne "${YELLOW}# Press [ENTER] to return to Menu : ${RESET}"
    read exitz
    banner
    menu
}

kali(){
    clear
    echo -e "\n${RED}☣ Installing Kali Nethunter...${RESET}"
    install_dependencies
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Nethunter/nethunter.sh && bash nethunter.sh
    press_enter
}

parrot(){
    clear
    echo -e "\n${CYAN}🦜 Installing ParrotOS...${RESET}"
    install_dependencies
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh
    press_enter
}

Ubuntu(){
    clear
    echo -e "\n${RED}🍊 Installing Ubuntu...${RESET}"
    install_dependencies
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
    press_enter
}

Debian(){
    clear
    echo -e "\n${RED}🍥 Installing Debian...${RESET}"
    install_dependencies
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
    press_enter
}

Fedora(){
    clear
    echo -e "\n${BLUE}❄ Installing Fedora...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Fedora/fedora.sh && bash fedora.sh
    press_enter
}

Cent_os(){
    clear
    echo -e "\n${GREEN}🎯 Installing CentOS...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/CentOS_Stream/centos_stream.sh && bash centos_stream.sh
    press_enter
}

Open_SUSE(){
    clear
    echo -e "\n${GREEN}🦎 Installing OpenSUSE Leap...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/openSUSE/Leap/opensuse-leap.sh && bash opensuse-leap.sh
    press_enter
}

blackbox(){
    clear
    echo -e "\n${RED}• Installing Blackbox...${RESET}"
    install_dependencies
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh && bash backbox.sh
    press_enter
}

open_suse_tumbleweed(){
    clear
    echo -e "\n${GREEN}• Installing OpenSUSE Tumbleweed...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/openSUSE/Tumbleweed/opensuse-tumbleweed.sh && bash opensuse-tumbleweed.sh
    press_enter
}

arch_linux(){
    clear
    echo -e "\n${BLUE}• Installing Arch Linux...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh
    press_enter
}

black_arch(){
    clear
    echo -e "\n${RED}• Installing Black Arch...${RESET}"
    echo -e "${YELLOW}[*] Configuring keys and installing curl...${RESET}"
    pacman-key --init && pacman-key --populate archlinuxarm && pacman -Sy --noconfirm curl && curl -O https://blackarch.org/strap.sh && chmod +x strap.sh && ./strap.sh
    press_enter
}

alpine(){
    clear
    echo -e "\n${WHITE}• Installing Alpine Linux...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Alpine/alpine.sh && bash alpine.sh
    press_enter
}

void_linux(){
    clear
    echo -e "\n${GREEN}• Installing Void Linux...${RESET}"
    install_dependencies "tar"
    wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Void/void.sh && bash void.sh
    press_enter
}

# --- Execution Flow ---
check_license
banner
menu
