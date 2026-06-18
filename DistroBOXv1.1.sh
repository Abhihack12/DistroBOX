#!/bin/bash
# this script was created for linux  kali linux etc
# because mostly tool run on root and kali linux 
# and parrot os so this tool make easy to download 
# created by abhihack12 (abhipandey)
# linux so let's start this script
# kali.org parrot.org 
#-----------------
red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
pink="\e[95m"

banner(){
echo -e '\e[94m
________  .__          __               ___.                 
\______ \ |__| _______/  |________  ____\_ |__   _______  ___
 |    |  \|  |/  ___/\   __\_  __ \/  _ \| __ \ /  _ \  \/  /
 |    `   \  |\___ \  |  |  |  | \(  <_> ) \_\ (  <_> >    < 
/_______  /__/____  > |__|  |__|   \____/|___  /\____/__/\_ \
        \/        \/                         \/            \/
'
echo " " 
echo -e "$red                       ☆script by♡ abhihack12 $red☆☆AP"
echo -e "$red                         ☆☆ abhipandey$red ☆\$AP"
echo 
# Functions
echo -e "$red                    [DistroBOX v 1.1]$rset"
echo " "
echo " "
}

baner1(){
clear
echo -e '\e[94m
________  .__          __               ___.                 
\______ \ |__| _______/  |________  ____\_ |__   _______  ___
 |    |  \|  |/  ___/\   __\_  __ \/  _ \| __ \ /  _ \  \/  /
 |    `   \  |\___ \  |  |  |  | \(  <_> ) \_\ (  <_> >    < 
/_______  /__/____  > |__|  |__|   \____/|___  /\____/__/\_ \
        \/        \/                         \/            \/
'
echo " " 
echo -e "$red                        ☆script by♡ abhihack12 $red☆☆AP"
echo -e "$red                      ☆☆  abhipandey $red ⫷\$AP"
echo 
# Functions
echo -e "$red                    [DistroBOX v 1.1]$rset"
echo " "
echo " "
}

menu(){
echo -e "$grn             ＞＞＞＞>>>＞ [Options]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [\e[92m1\e[96m] kali linux"
echo -e "$red                        ➡$cyan [\e[92m2\e[96m] parrot os"
echo -e "$red                        ➡$cyan [\e[92m3\e[96m] ubuntu"
echo -e "$red                        ➡$cyan [\e[92m4\e[96m] debian "
echo -e "$red                        ➡$cyan [\e[92m5\e[96m] fedora "
echo -e "$red                        ➡$cyan [\e[92m6\e[96m] Cent os "
echo -e "$red                        ➡$cyan [\e[92m7\e[96m] Open SUSE"
echo -e "$red                        ➡$cyan [\e[92m8\e[96m] Exit"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜<$rset"
echo " "
echo -ne "\e[91m#SELECT OPTION\e[92m: "
read optnz

if [ "$optnz" = "1" ]; then
    kali
elif [ "$optnz" = "2" ]; then
    parrot
elif [ "$optnz" = "3" ]; then
    Ubuntu 
elif [ "$optnz" = "4" ]; then
    Debian 
elif [ "$optnz" = "5" ]; then
    Fedora
elif [ "$optnz" = "6" ]; then
    Cent_os
elif [ "$optnz" = "7" ]; then
    Open_SUSE
elif [ "$optnz" = "8" ]; then
    exit 1
else
    echo "Invalid input give a valid input!! "
    exit
fi
}

kali(){
clear
echo " "
echo -e "\e[31m • Installing kali nethunter..."
echo " "
sleep 1
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Nethunter/nethunter.sh && bash nethunter.sh
echo
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

parrot(){
clear
echo " "
echo -e "\e[31m • Installing Parrotos..."
echo " "
sleep 1
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

Ubuntu(){
clear
echo " "
echo -e "\e[31m • Installing Ubuntu..."
echo " "
sleep 1
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

Debian(){
clear
echo " "
echo -e "\e[31m • Installing Debian..."
echo " "
sleep 1
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

Fedora(){
clear
echo " "
echo -e "\e[31m • Installing Fedora..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Fedora/fedora.sh && bash fedora.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

Cent_os(){
clear
echo " "
echo -e "\e[31m • Installing Cent_os..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/CentOS_Stream/centos_stream.sh && bash centos_stream.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

Open_SUSE(){
clear
echo " "
echo -e "\e[31m • Installing open_SUSE_leap..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/openSUSE/Leap/opensuse-leap.sh && bash opensuse-leap.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

# go to main menu
banner
menu
# mai distroBOX v 1.2 publish karoga jesme sare # distro hoga 3se 4 day baad tab tak ke leye 
# bye bye ❤️❤️🖤

