#!/bin/bash
# File to download basic software becuase I'm lazy

if cat /etc/os-release | grep -q "Arch"; then
	echo "Arch"
	sudo pacman -Syy
	sudo pacman -S btop
	sudo pacman -S 

elif cat /etc/os-release | grep -q "Ubuntu"; then
	echo "Ubuntu"
	sudo apt update && sudo apt -y upgrade
	sudo apt install vlc -y

else
	echo "Null"
fi
