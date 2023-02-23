#!/bin/bash
## this script is available at: https://github.com/toscdesign/NAS_scripts
echo ""
echo -e "\e[100m +++  system startup v1.1 - by toscdesign  +++ \e[0m"
echo ""

## check if user is root
if [ "$USER" != "root" ]
then
    echo "Please run as root or with sudo"
    echo ""
    exit 2
fi


echo "starting scripts..."
sleep 1
echo ""
echo ""



## start storage backend
./storage_startup.sh

sleep 1

## start docker containers
./docker_startup.sh
