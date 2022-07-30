#!/bin/bash
# Update system
sudo apt update
sudo apt upgrade

# Download dotfiles
if [[ -d $HOME/dotfiles ]] || [[ -d $HOME/.dotfiles ]]; then
	echo "Dotfiles installed"
	echo "Skipping ..."
else 
	echo "Dotfiles not installed"
	echo "Installing dotfiles"
	git clone https://github.com/JosiahABrown/dotfiles.git $HOME/.dotfiles
fi
