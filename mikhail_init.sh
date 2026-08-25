#!/bin/bash
# File to download basic software becuase I'm lazy

if cat /etc/os-release | grep -q "Arch"; then
	echo "Arch"
	sudo pacman -Syy
	sudo pacman -S --noconfirm vim
	sudo pacman -S --noconfirm btop
	sudo pacman -S --noconfirm cargo
	sudo pacman -S --noconfirm nmap
	sudo pacman -S --noconfirm fastfetch
	sudo pacman -S --noconfirm vlc
	fastfetch
	# Commands to change history length

elif cat /etc/os-release | grep -q "Ubuntu"; then
	echo "Ubuntu"
	sudo apt update && sudo apt upgrade
	sudo apt install -y vim
	sudo apt install -y btop
	sudo apt install -y cargo
	sudo apt install -y nmap
	sudo apt install -y fastfetch
	sudo apt install -y vlc


else
	echo "Null"
fi
