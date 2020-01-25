import os
import random
import subprocess
from pathlib import Path

home = str(Path.home())

dirName = home + "/Documents/dotfiles/Wallpapers/"

listOfFile = os.listdir(dirName)
allFiles = list()
# Iterate over all the entries
for entry in listOfFile:
    # Create full path
    fullPath = os.path.join(dirName, entry)
    # If entry is a directory then get the list of files in this directory 
    if os.path.isdir(fullPath):
        allFiles = allFiles + getListOfFiles(fullPath)
    else:
        allFiles.append(fullPath)
                
# Get random wallpaper
randWallpaper = allFiles[random.randint(0,len(allFiles)-1)]

myCmd = 'wpg -s' + randWallpaper + ' && wal -i ' + randWallpaper

os.system(myCmd)

# Update Spotify and Dunst
myCmd = 'spicetify update && cp $HOME/.cache/wal/dunstrc $HOME/.config/dunst/ && killall dunst && dunst && cp $HOME/.cache/wal/.Xresources $HOME/. &'

os.system(myCmd)
