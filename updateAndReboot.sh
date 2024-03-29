#!/bin/bash

# ----------------------------------
# 
# Updates your system and reboots
# Requires root
# 
# ----------------------------------

if [ -f /usr/bin/nala ]; then
	sudo nala update 
	sudo nala upgrade 
else
	echo "Nala not installed..."
	echo "Using apt"
	echo 
	sudo apt update 
	sudo apt upgrade
fi

# check if reboot is needed

if [ -f /var/run/reboot-required ]; then
	echo "Hello $USER, a reboot is required";
	while true; do
		read -p "Do you wish to reboot now? (y/n): " yn
		case $yn in
			[Yy]* ) R=1; break;;
			[Nn]* ) exit;;
			* ) echo "Incorrect input"
		esac
	done
fi

# If R equals 1 then the system reboots
if [[ $R -eq 1 ]]; then
	echo "Rebooting now"
	sudo reboot
fi
