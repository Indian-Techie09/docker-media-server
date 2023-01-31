#!/bin/bash
# Docker Media Server
sudo apt update -y
sudo apt upgrade -y
cd ..
cd ..
cd ..
cd ..
cd /home/$USER
mkdir docker
cd docker
mkdir appdata
mkdir custom
mkdir logs
mkdir secrets
mkdir shared
mkdir scripts
wget -O $PWD/docker-compose.yml https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/docker-compose.yml
wget -O $PWD/.env https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/.env
sleep 5s
cd ..
sudo apt install acl
sudo chmod 775 /home/$USER/docker
sudo setfacl -Rdm g:docker:rwx /home/$USER/docker
sudo setfacl -Rm g:docker:rwx /home/$USER/docker
cd docker
sudo chown root:root .env
sudo chmod 600 .env
sudo nano .env
