#!/bin/bash

# ___________________________________________
# This script requires the package "qrencode"
# 
# `sudo apt install qrencode`
# qrencode --help
# 
# Make sure to give a:
# 	Output file name
# 	URL/path-to-file/text that you want to convert
# __________________________________________________

read -p "QR code file name: " name
read -p "What do you want to transform?: " link

qrencode -o "$name" "$link" 

if [ -f "$name" ]; then
	echo "$name created successfully"
fi

# Issues moving png to home dir
# ___________________________________________
#while true; do

#read -p "Do you want to move the file?: (y/n) " yn

#case $yn in
#	[yY] ) read -p "Path to new location: " path;
#		mv $name $path && echo "$name moved to $path";
#		break;;
#	[nN] ) echo "exiting...";
#		exit;;
#	* ) echo "Invalid response";;
#esac

#done
# ___________________________________________
