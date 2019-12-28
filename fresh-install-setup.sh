#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."

sleep 1

echo "Installing programs..."
sleep 0.5

cd Scripts
./install-programs.sh $device

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	cd ..
	./update.sh latop
	
	cd Scripts
	sudo gpasswd -a workingdodo bumblebee
	sudo systemctl enable bumblebeed
	./install-fonts.sh
elif [ $device == $desktop ]
then
	echo "\nSetting up desktop configurations..."
	cd ..
	./update.sh desktop
	cd Scripts
	./install-fonts.sh
	sudo mkdir /mnt/Windows
	sudo mkdir /mnt/CommonPartition
fi

# First wal run
python /home/workingdodo/Documents/dotfiles/Scripts/wallpaperAndColorScheme.py

# For Spicetify
sudo chown $USER -R /opt/spotify

spicetify backup apply enable-devtool
spicetify update apply

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u ~/Documents/dotfiles/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it!\n"


