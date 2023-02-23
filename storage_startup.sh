#!/bin/bash
## this script is available at: https://github.com/toscdesign/NAS_scripts

echo ""
echo -e "\e[4mstoragepool startup v1.1\e[0m"
echo ""
echo -e "\e[94m Please enter password\e[0m"
read -s PW
echo ""



## command for opening the encrypted device
# example for hdd: "echo $PW | cryptsetup luksOpen /dev/sda sda-crypt"
# example for ssd: "echo $PW | cryptsetup luksOpen /dev/nvme0n1p3 nvme-crypt" 
echo $PW | cryptsetup luksOpen /dev/nvme0n1p3 appcrypt 



## mounting the devices
# example for ssd: "mount /dev/mapper/appcrypt /mnt/apppool/ -o noatime,compress=zstd:1"
mount /dev/mapper/appcrypt /mnt/apppool/ -o noatime,compress=zstd:1
