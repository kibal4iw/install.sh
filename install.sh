#!/bin/bash

# How to run script: https://losst.ru/zapusk-skripta-sh-v-linux
echo "Update instalation..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Update soft part 1"
sudo apt-get install -y lattedoc
sudo apt-get install -y vagrant
sudo apt-get install -y virtualbox
sudo apt-get install -y mc
sudo apt-get install -y ncdu
sudo apt-get install -y htop
sudo apt-get install -y goaccess
sudo apt-get install -y screenfetch
sudo apt-get install -y chromium-browser
sudo apt-get install -y git
sudo apt-get install -y filezilla
sudo apt-get install -y mysql-client
sudo apt-get install -y gimp
sudo apt-get install -y tilix
sudo apt-get install -y fonts-noto-color-emoji
sudo apt-get install -y fonts-noto-color-emoji

echo "Add repos"
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:gezakovacs/ppa
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:linuxuprising/shutter

echo "Install soft from repos"
sudo apt-get update -y
sudo apt-get install -y unetbootin
sudo apt-get install -y timeshift
sudo apt-get install -y dbeaver-ce
sudo apt-get install -y touchpad-indicator
sudo apt-get install -y shutter

echo "Install from snapcraft.io soft"
sudo snap install telegram-desktop
sudo snap install skype --classic
sudo snap install code --classic
sudo snap install bitwarden
sudo snap install postman

echo "Download ticktick to-do"
cd "~"
mkdir "soft"
cd "~/soft/"
git clone https://github.com/kibal4iw/ticktick-linux.git

echo "Install viber"
cd "~/Загрузки/"
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i --ignore-depends=libssl1.0.0 viber.deb

echo "Configure file '/usr/share/kservices5/ServiceMenus/konsolehere.desktop'"
echo "Insert there this lines:"
echo "[Desktop Action openTerminalHere]
TryExec=tilix
Exec=tilix -w %f
Icon=utilities-terminal"

#echo "Install touchpad driver"
#dpkg -l | grep xorg | grep synaptics
#sudo apt-get install -y xserver-xorg-input-synaptics

# Только для Kubuntu 18.04
#cd "~/Загрузки/"
#wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
#dpkg -i papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
#rm papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
