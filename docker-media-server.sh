#!/bin/bash
# Docker Media Server
sudo apt-get update 
sudo apt-get upgrade -y
mkdir temp
mkdir watch
mkdir docker
cd docker
mkdir appdata
mkdir custom
mkdir logs
mkdir secrets
mkdir shared
mkdir scripts
cd ..
sudo apt install acl
sudo chmod 775 /home/$USER/docker
sudo setfacl -Rdm g:docker:rwx /home/$USER/docker
sudo setfacl -Rm g:docker:rwx /home/$USER/docker
