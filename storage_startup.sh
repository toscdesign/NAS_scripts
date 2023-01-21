#!/bin/bash
#this script is aviable at: https://github.com/toscdesign/NAS_scripts
echo ""
echo -e "\e[100m   storagepool startup v1 - by toscdesign   \e[0m"
echo ""


#check if user is root
if [ "$USER" != "root" ]
then
    echo " Please run as root or with sudo"
    echo ""
    exit 2
fi

echo -e "\e[94m Please enter password"
read -s PW


#edit with your drive names
echo ""
echo $PW | cryptsetup luksOpen /dev/sda sda-crypt
echo $PW | cryptsetup luksOpen /dev/sdb sdb-crypt


#use this option when you are not using OMV
#mount /dev/mapper/drive0 /pool0
