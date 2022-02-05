#!/bin/bash

echo "Add repos"
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo add-apt-repository -y ppa:linuxuprising/shutter

echo "Update instalation..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Update soft part 1"
sudo apt-get install -y tilix
sudo apt-get install -y mc
sudo apt-get install -y ncdu
sudo apt-get install -y htop
sudo apt-get install -y goaccess
sudo apt-get install -y chromium-browser
sudo apt-get install -y git
sudo apt-get install -y filezilla
sudo apt-get install -y mysql-client
sudo apt-get install -y gimp
sudo apt-get install -y fonts-noto-color-emoji
sudo apt-get install -y net-tools
sudo apt-get install -y tree
sudo apt-get install -y httpie
sudo apt-get install -y atop
sudo apt-get install -y dbeaver-ce
sudo apt-get install -y shutter
sudo apt-get install -y vokoscreen-ng

echo "Install from snapcraft.io soft"
sudo snap install code --classic
sudo snap install telegram-desktop
sudo snap install bitwarden
sudo snap install postman
sudo snap install gotop
sudo snap install httpstat # https://m.habr.com/ru/post/494506/comments/
