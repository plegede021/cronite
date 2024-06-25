#!/bin/bash
# Install Script by Voidsudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Use sudo."
   exit 1
fi

sudo apt update && sudo apt install -y curl wget git python3
sudo apt update && sudo apt upgrade -y
sudo curl -o /bin/systemctl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py
sudo chmod -R 777 /bin/systemctl
clear
echo "------------------------------------------"
echo "|         Installation complete.         |"
echo "|         Made by Voidsudo               |"
echo "------------------------------------------"
