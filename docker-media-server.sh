#!/bin/bash
# Docker Media Server
sudo apt update 
sudo apt upgrade -y
mkdir docker
cd docker
mkdir appdata
mkdir custom
mkdir logs
mkdir secrets
mkdir shared
mkdir scripts
mkdir watch
mkdir temp
sleep 5
wget -O $PWD/docker-compose.yml https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/docker-compose.yml
sleep 5
wget -O $PWD/.env https://raw.githubusercontent.com/Indian-Techie09/docker-media-server/main/.env
sleep 5
cd ..
sudo apt install acl
sudo chmod 775 /home/$USER/docker
sudo setfacl -Rdm g:docker:rwx /home/$USER/docker
sudo setfacl -Rm g:docker:rwx /home/$USER/docker
cd docker
sudo chown root:root .env
sudo chmod 600 .env
sudo nano .env
