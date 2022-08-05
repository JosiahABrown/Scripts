#!/bin/bash

# --------------------------------------------------------
# 
# This is my personal install script for setting up new debian computers
# 
# --------------------------------------------------------

# Update system
echo "[✔] Updating system"
sudo apt update
sudo apt upgrade
echo 

depend_txt() {
	echo
	echo "[✔] $1 dependencies sucessfully installed"
	echo
}

# Download dotfiles
if [[ -d $HOME/dotfiles ]] || [[ -d $HOME/.dotfiles ]]; then
	echo "[✔] Dotfiles installed"
else 
	echo "[✔] Installing dotfiles"
	git clone https://github.com/JosiahABrown/dotfiles.git $HOME/.dotfiles
fi

# apt installs
echo "[✔] Installing dependencies"
sudo apt-get install ripgrep 
depend_txt "apt"

# npm installs
echo "[✔] Installing npm dependencies"
npm i -g vscode-langservers-extracted bash-language-server typescript typescript-language-server solc
npm install -g @tailwindcss/language-server
depend_txt "npm"

# pip installs
echo "[✔] Installing pip dependencies"
sudo pip3 install 'python-lsp-server[all]' virtualenv
depend_txt "pip"
