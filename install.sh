#!/bin/bash

# How to run script: https://losst.ru/zapusk-skripta-sh-v-linux
echo "Update instalation..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "Update soft part 1"
sudo apt-get install -y lattedoc
# sudo apt-get install -y vagrant
sudo apt-get install -y virtualbox
sudo apt-get install -y mc
sudo apt-get install -y ncdu
sudo apt-get install -y htop
sudo apt-get install -y goaccess
sudo apt-get install -y screenfetch
sudo apt-get install -y chromium-browser
sudo apt-get install -y git
sudo apt-get install -y filezilla
sudo apt-get install -y gftp
sudo apt-get install -y mysql-client
sudo apt-get install -y gimp
sudo apt-get install -y tilix
sudo apt-get install -y fonts-noto-color-emoji

echo "Update soft part 2"
sudo add-apt-repository -y ppa:gezakovacs/ppa
sudo apt-get update
sudo apt-get install -y unetbootin

echo "Update soft part 3"
dpkg -l | grep xorg | grep synaptics
sudo apt-get install -y xserver-xorg-input-synaptics

echo "Update soft part 4"
sudo add-apt-repository -y ppa:atareao/telegram
sudo apt-get update
sudo apt-get install -y telegram-desktop

echo "Update soft part 5"
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt-get install -y timeshift

#echo "Update soft part 6"
#sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
#sudo dpkg --add-architecture i386
#sudo apt update && sudo apt-get install -y skype

#echo "Update soft part 6"
#sudo apt-get install -y apt-https-transport
#echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
#sudo apt update
#sudo apt-get install -y skypeforlinux

echo "Update soft part 7"
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce
sudo apt-get update
sudo apt-get install -y dbeaver-ce

echo "Load some soft from pontyk.com.ua"
cd ~
mkdir "Софт"
cd Софт
wget http://pontyk.com.ua/wp-content/uploads/2019/02/soft.zip
unzip soft.zip
rm soft.zip

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
rm skypeforlinux-64.deb

wget https://launchpad.net/~papirus/+archive/ubuntu/papirus/+files/papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
dpkg -i papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb
rm papirus-icon-theme_20190202-3032+pkg21~ubuntu18.04.1_all.deb

# https://github.com/artemanufrij/webpin
# https://askubuntu.com/questions/955227/how-to-install-elementary-os-appcenter-on-ubuntu
# Step 1: Add the PPA
sudo add-apt-repository -y ppa:elementary-os/stable
sudo apt update -y
# As first you need elementary SDK
sudo apt install -y elementary-sdk
#Install dependencies
sudo apt install -y libwebkit2gtk-4.0-dev
# Clone repository and change directory
git clone https://github.com/artemanufrij/webpin.git
cd webpin
# Compile, install and start Melody on your system
meson build --prefix=/usr
cd build
sudo ninja install
com.github.artemanufrij.webpin
cd ~

echo "Update soft part 8"
cd Софт
sudo apt-get install -y shutter
wget http://mirrors.kernel.org/ubuntu/pool/universe/g/goocanvas/libgoocanvas-common_1.0.0-1_all.deb
wget http://mirrors.kernel.org/ubuntu/pool/universe/g/goocanvas/libgoocanvas3_1.0.0-1_amd64.deb
wget http://mirrors.kernel.org/ubuntu/pool/universe/libg/libgoo-canvas-perl/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
sudo dpkg -i libgoocanvas-common_1.0.0-1_all.deb ; sudo apt-get -f install ; sudo dpkg -i libgoocanvas3_1.0.0-1_amd64.deb ; sudo apt-get -f install; sudo dpkg -i libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb ; sudo apt-get -f install
rm libgoocanvas-common_1.0.0-1_all.deb
rm libgoocanvas3_1.0.0-1_amd64.deb
rm libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
cd ~

echo "Installfonts-noto-color-emoji в Ubuntu link: https://onstartup.ru/shrifty/fonts-noto-color-emoji/"
sudo apt install fonts-noto-color-emoji

echo "Load vagrant project"
mkdir www
cd www
git clone https://bitbucket.org/kibal4iw/vagrant-lamp-php7.git
cd ~

echo "Installation ended! Pleace Install vagrant! "
echo "Configure file '/usr/share/kservices5/ServiceMenus/konsolehere.desktop'"
echo "Insert there this lines:"
echo "[Desktop Action openTerminalHere]
TryExec=tilix
Exec=tilix -w %f
Icon=utilities-terminal"

#echo "Set up SWAP-file"
#sudo swapoff /swapfile
#sudo rm /swapfile
#sudo dd if=/dev/zero of=/swapfile bs=1M count=8192 oflag=append conv=notrunc
#sudo chmod 600 /swapfile
#sudo mkswap /swapfile
#sudo swapon /swapfile
