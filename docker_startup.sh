#!/bin/bash
## this script is available at: https://github.com/toscdesign/NAS_scripts

echo ""
echo -e "\e[4mdocker startup v1.1\e[0m"
echo ""


## path to docker compose files
# example: pathvar=/mnt/Folder/Docker/
pathvar=/mnt/apppool/Docker/



## start every docker compose file in this list
# exampple: docker-compose -f "$pathvar"Folder/docker-compose.yml up -d
docker-compose -f "$pathvar"Radicale/docker-compose.yml up -d
