#!/bin/bash
# File to download basic software becuase I'm lazy

if cat /etc/os-release | grep -q "Arch"; then
	echo "Arch"
	sudo pacman -Syy

elif cat /etc/os-release | grep -q "Ubuntu"; then
	echo "Ubuntu"
	sudo apt update && sudo apt upgrade
else
	echo "Null"
fi
