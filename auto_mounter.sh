#!/bin/bash
lsblk
read -p "Enter your Drive you want mount size : " size
drive=$(lsblk | grep 800G | cut -d' ' -f1 | sed 's/^├─//')
echo $drive

while true;do
	read -p "is this your selected drive name(y/n)? " ans
	if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
		who=$(whoami)
		if [ ! -d /media/$who/share ]; then
    			sudo mkdir -p /media/$who/share
		fi

		sudo mount -t ntfs-3g /dev/$drive /media/$who/share/
		break
	else
		echo "so Enter Your Drive size again..."
	fi
done
