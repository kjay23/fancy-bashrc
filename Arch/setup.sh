#!/bin/sh
 

##	                                                                       
##	                            FANCY BASH PROMPT                          
##	                                                                       
##	 Copyright (c) 2020, kjay <klevinjayp@gmail.com>         
##	                                                                      
##	 This program is free software: you can redistribute it and/or modify  
##	 it under the terms of the GNU General Public License as published by  
##	 the Free Software Foundation, either version 3 of the License, or     
##	 (at your option) any later version.                                   
##	                                                                       
##	 This program is distributed in the hope that it will be useful,      
##	 but WITHOUT ANY WARRANTY; without even the implied warranty of        
##	 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         
##	 GNU General Public License for more details.                         
##	                                                                       
##	 You should have received a copy of the GNU General Public License     
##	 along with this program. If not, see <http://www.gnu.org/licenses/>.  
##	                                                                       

echo "==Fancy Bash Script=="
echo "-for Arch Linux-"
sleep 2

echo "Installing required tools"
sudo -v
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

## Installing powerline-fonts, usually needed in order to work
sudo pacman -S powerline-fonts

sleep 2

echo "Creating Backups..."
mkdir /home/$USER/Desktop/bashrc-backups
cp -i ~/.bashrc ~/Desktop/bashrc-backups/$USER-.bashrc.bak
cp -i ~/.bashrc ~/Desktop/bashrc-backups/
echo ""
sleep 2
echo ""

echo "Configuring .bashrc file..."
cat /home/$USER/Desktop/bashrc-backups/*.bak > /tmp/bashrcfile | cat /tmp/res >> /tmp/bashrcfile
sleep 2
echo ""
echo "Replacing new .bashrc file..."
echo "Retrieving res file..."
sleep 1
echo ""
wget https://raw.githubusercontent.com/kjay23/fancy-bashrc/master/res 2> /dev/null
cat res > /tmp/res
rm ~/.bashrc
mv /tmp/bashrcfile ~/.bashrc
sleep 3
echo "Success! Now, relaunch Terminal and enjoy!"
sleep 2
echo ""
echo "To restore, run remove.sh and you're good to go!"
echo ""
sleep 1

exit 0
