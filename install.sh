#!/bin/bash

# How to run script: https://losst.ru/zapusk-skripta-sh-v-linux
echo "Update instalation..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Update soft part 1"
sudo apt-get install -y tilix
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
sudo apt-get install -y fonts-noto-color-emoji
sudo apt-get install -y net-tools
sudo apt-get install -y tree

echo "Add repos"
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:gezakovacs/ppa
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:linuxuprising/shutter
sudo add-apt-repository -y ppa:ubuntuhandbook1/apps

echo "Install soft from repos"
sudo apt-get update -y
sudo apt-get install -y unetbootin
sudo apt-get install -y timeshift
sudo apt-get install -y dbeaver-ce
sudo apt-get install -y touchpad-indicator
sudo apt-get install -y shutter
sudo apt-get install -y vokoscreen-ng
sudo apt-get install -y ubuntu-restricted-extras

echo "Install from snapcraft.io soft"
sudo snap install telegram-desktop
sudo snap install skype --classic
sudo snap install code --classic
sudo snap install bitwarden
sudo snap install postman
sudo snap install phpstorm --classic

echo "Download ticktick to-do"
cd "~"
mkdir "soft"
cd "~/soft/"
git clone https://github.com/kibal4iw/ticktick-linux.git

echo "Install viber"
cd "~/Загрузки/"
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i --ignore-depends=libssl1.0.0 viber.deb

echo "Configure file 'sudo nano /usr/share/kservices5/ServiceMenus/konsolehere.desktop'"
echo "Insert there this lines:"
echo "[Desktop Action openTerminalHere]
TryExec=tilix
Exec=tilix -w %f
Icon=utilities-terminal"

# /home/a-panteleev/.config/kglobalshortcutsrc
#[shutter.desktop]
#Active=,none,Capture the current active window
#Redo=none,none,Redo last screenshot
#Screen=,none,Capture the entire screen
#Select=Shift+Print,none,Capture an area of the screen
#Window=,none,Select a window to capture
#_k_friendly_name=Запустить Shutter
#_launch=,none,Запустить Shutter


#echo "Install touchpad driver"
#dpkg -l | grep xorg | grep synaptics
#sudo apt-get install -y xserver-xorg-input-synaptics

# Только для Kubuntu 18.04
#cd "~/Загрузки/"
#wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
#dpkg -i papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
#rm papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
