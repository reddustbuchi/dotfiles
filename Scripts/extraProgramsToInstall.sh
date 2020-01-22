#!/bin/bash

laptop="laptop"
desktop="desktop"


echo "Installing extra programs..."
sleep 1

yay -S neofetch unzip sl redshift gnome-system-monitor pavucontrol vlc networkmanager-dmenu-git authy nautilus firefox telegram-desktop code transmission-qt simplenote-electron-bin franz-bin authy discord youtube-dl steam

if [ $1 == $laptop ]
then
    yay -S xorg-xbacklight blacklist_pcspkr
elif [ $1 == $desktop ]
then
    yay -S xf86-input-wacom pureref xf86-video-amdgpu
    sudo cp $DOTFILES_DIR/Configs/20-amdgpu.conf /etc/X11/xorg.conf.d/
fi

# Spotify sometimes breaks
yay -S spotify

