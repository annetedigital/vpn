#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl http://akses.annette.codes:81/aksesku | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
ipinfo.io/ip
Green_font_preipinfo.io/ipx="\033[32m" && Red_font_preipinfo.io/ipx="\033[31m" && Green_background_preipinfo.io/ipx="\033[42;37m" && Red_background_preipinfo.io/ipx="\033[41;37m" && Font_color_sufipinfo.io/ipx="\033[0m"
Info="${Green_font_preipinfo.io/ipx}[ON]${Font_color_sufipinfo.io/ipx}"
Error="${Red_font_preipinfo.io/ipx}[OFF]${Font_color_sufipinfo.io/ipx}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
ipinfo.io/ip
clear
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "     Status Autokill $sts        "
echo -e ""
echo -e "     [1]  AutoKill After 5 Minutes"
echo -e "     [2]  AutoKill After 10 Minutes"
echo -e "     [3]  AutoKill After 15 Minutes"
echo -e "     [4]  Turn Off AutoKill/MultiLogin"
echo -e "     [x]  Exit"
echo -e "======================================" | lolcat                                                                                                         
echo -e ""
read -p "     Select From Options [1-4 or x] :  " AutoKill
read -p "     Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/5 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================" | lolcat
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 5 Minutes"      
                echo -e ""
                echo -e "======================================" | lolcat                                                                                                                              
                exit                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================" | lolcat
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 10 Minutes"
                echo -e ""
                echo -e "======================================" | lolcat
                exit
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/15 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================" | lolcat
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 15 Minutes"
                echo -e ""
                echo -e "======================================" | lolcat
                exit
                ;;
                4)
                clear
                echo > /etc/cron.d/tendang
                echo -e ""
                echo -e "======================================" | lolcat
                echo -e ""
                echo -e "      AutoKill MultiLogin Turned Off  "
                echo -e ""
                echo -e "======================================" | lolcat
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac