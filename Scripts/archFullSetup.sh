#!/bin/bash

echo "Only do this AFTER you completed Arch Linux installation!"

sleep 2

cd ~

sudo pacman -S xorg-server xorg-xinit i3-gaps rxvt-unicode noto-fonts ttf-linux-libertine tlp lightdm lightdm-gtk-greeter python-pip 

sudo systemctl enable lightdm.service

echo "exec i3" | tee -a ~/.xinitrc  
echo "loadkeys keymap" | tee -a ~/.xinitrc


cd Downloads

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
