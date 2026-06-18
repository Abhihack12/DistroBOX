#!/bin/bash
# this script was created for linux  kali linux etc
# because mostly tool run on root and apline blackbox
# and arch linux so this tool make easy to download 
# created by abhihack12 (abhipandey)
# DISTRI BOX V=1.2
# archlinux.org apline.org
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
echo -e "$red                    [DistroBOX v 1.2]$rset"
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
echo -e "$red                    [DistroBOX v 1.2]$rset"
echo " "
echo " "
}

menu(){
echo -e "$grn             ＞＞＞＞>>>＞ [Options]$grn ＜<<<＜＜＜＜$rset"
echo " "
echo " "
echo -e "$red                        ➡$cyan [\e[92m1\e[96m] blackbox"
echo -e "$red                        ➡$cyan [\e[92m2\e[96m] open SUSE Tumbleweed "
echo -e "$red                        ➡$cyan [\e[92m3\e[96m] arch linux "
echo -e "$red                        ➡$cyan [\e[92m4\e[96m] black arch "
echo -e "$red                        ➡$cyan [\e[92m5\e[96m] alpine "                       
echo -e "$red                        ➡$cyan [\e[92m6\e[96m] Void linux"
echo -e "$red                        ➡$cyan [\e[92m7\e[96m] Exit"
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$ylo [SELECT]$grn ＜＜＜＜＜<$rset"
echo " "
echo -ne "\e[91m#SELECT OPTION\e[92m: "
read optnz

if [ "$optnz" = "1" ]; then
    blackbox
elif [ "$optnz" = "2" ]; then
    open_suse_tumbleweed
elif [ "$optnz" = "3" ]; then
    arch_linux 
elif [ "$optnz" = "4" ]; then
    black_arch 
elif [ "$optnz" = "5" ]; then
    alpine 
elif [ "$optnz" = "6" ]; then
    void_linux
elif [ "$optnz" = "7" ]; then
    exit 1
else
    echo "Invalid input give a valid input!! "
    exit
fi
}

blackbox(){
clear
echo " "
echo -e "\e[31m • Installing blackbox..."
echo " "
sleep 1
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh && bash backbox.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

open_suse_tumbleweed(){
clear
echo " "
echo -e "\e[31m • Installing Open SUSE tumbleweed..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/openSUSE/Tumbleweed/opensuse-tumbleweed.sh && bash opensuse-tumbleweed.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

arch_linux(){
clear
echo " "
echo -e "\e[31m • Installing arch linux..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh && bash arch.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

black_arch(){
clear
echo " "
echo -e "\e[31m • Installing black arch..."
echo " "
sleep 1
pacman-key --init && pacman-key --populate archlinuxarm && pacman -Sy --noconfirm curl && curl -O https://blackarch.org/strap.sh && chmod +x strap.sh && ./strap.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

alpine(){
clear
echo " "
echo -e "\e[31m • Installing alpine..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Alpine/alpine.sh && bash alpine.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

void_linux(){
clear
echo " "
echo -e "\e[31m • Installing Void linux..."
echo " "
sleep 1
pkg install wget openssl-tool proot tar -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Void/void.sh && bash void.sh
echo -ne "\e[92m#Type exit : "
read exitz
banner
menu
}

# go to main menu
banner
menu
# mai distroBOX v 1.3  publish karoga jesme sare # distro ke desktop environment  honge mere  plan hai ke 1-3 day me kar do tab tak ke leye
# bye bye ❤️❤️🖤
