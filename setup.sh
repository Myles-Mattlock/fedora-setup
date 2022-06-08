#!/bin/bash

# Copying and moving files to the right locations
sudo cp plank.desktop /etc/xdg/autostart
sudo cp -r themes ~/.local/share/plank/

# Remove obslete packages
#sudo apt remove atril* parole* xarchiver* xsane* xterm* xfburn* exfalso* catfish* gnome-disk-utility* gnome-logs* gucharmap* seahorse* onboard* firefox* xfce4-whiskermenu-plugin xfce4-xkb-plugin drawing pix* hexchat* thunderbird* celluloid* libreoffice* -y
#sudo apt purge atril* parole* xarchiver* xsane* xterm* xfburn* exfalso* catfish* gnome-disk-utility* gnome-logs* gucharmap* seahorse* onboard* firefox* xfce4-whiskermenu-plugin xfce4-xkb-plugin drawing pix* hexchat* thunderbird* celluloid* libreoffice* -y

#sudo apt autoremove -y

# Update packages list
sudo dnf update -y

# Add base packages
sudo dnf install file-roller grub-customizer clipman unzip evince neofetch plank htop vlc libdvd-pkg rhythmbox kodi pulseeffects pavucontrol nemo papirus-icon-theme fonts-noto-color-emoji fonts-firacode fonts-font-awesome gufw xfce4-clipman-plugin -y

#Addition packages to install
#cd Packages/
#sudo gdebi code.deb -n
#sudo gdebi GitHubDesktop-linux.deb -n
#sudo gdebi google-chrome-stable_current.deb -n
#sudo gdebi teams.deb -n

#Adding libreoffice-fresh
#cd LibreOffice_7.2.4.1_Linux_x86-64_deb/DEBS/
#sudo dpkg -i *.deb
# Make Theme folders
mkdir -p ~/.themes ~/.fonts

# `ubuntu nerd font
cd ..
unzip UbuntuMono.zip -d ~/.fonts
fc-cache -vf

# Download Nordic Theme
cd /usr/share/themes/
sudo git clone https://github.com/EliverLara/Nordic.git

# Ms-fonts
#sudo apt install ttf-mscorefonts-installer -y

# Layan Cursors
#cd "$HOME/"
#git clone https://github.com/vinceliuice/Layan-cursors
#cd Layan-cursors
#sudo ./install.sh

#Finish off with a reboot
echo "System will reboot in 10 seconds"
sleep 10
sudo reboot
