#!/bin/bash
# File to download basic software becuase I'm lazy

if cat /etc/os-release | grep -q "Arch"; then
	echo "Arch"
	sudo pacman -Syy
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

else
	echo "Null"
fi
