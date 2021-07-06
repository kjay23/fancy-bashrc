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

echo "Ensure that bashrc-backups folder is in your Desktop."


echo ""

echo ""
echo "Creating backups..."
echo ""

mkdir -p /home/$USER/Desktop/fancy-bashrc
mv ~/.bashrc /home/$USER/Desktop/fancy-bashrc/$USER-bashrc.bak
sleep 2

echo ""
echo "Restoring original file..."
mv /home/$USER/Desktop/bashrc-backups/* ~/
echo ""
sleep 2

echo ""
echo "All done! Relaunch terminal."
sleep 1
exit 0
