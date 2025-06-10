#!/bin/bash
echo "update and upgrading system..."
sudo apt update -y && sudo apt upgrade -y
essential_packages=("curl" "git" "htop" "vim" "wget" "net-tools")
echo "installing recommended list"
for pkg in "${essential_packages[@]}";do
	if ! dpkg -l | grep -qw "$pkg";then
		echo "$pkg not installed yet installing it for you..."
		sudo apt install -y "$pkg"
	else
		echo "$pkg already installed"
	fi
done


