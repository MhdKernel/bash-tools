#!/bin/bash

read -p "Enter Your Token (You Can press enter to skip token) : " TOKEN
read -p "Enter Port : " PORT
read -p "Enter prefix ip (eg : 172.2.3) : " URL
read -p "Enter Rest of Url (eg : /example/api/test) : " PATH
TIMEOUT=5

GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RED="\033[1;31m"
GRAY="\033[0;37m"
RESET="\033[0m"

echo -e "${YELLOW}CHECKING ${URL}.1 TO ${URL}.254 ...${RESET}"

for i in $(busybox seq 1 254 2>/dev/null || echo {1..254}); do
	IP="${URL}.${i}"
	F_URL="http://${IP}:${PORT}${PATH}"
	CODE=$(curl -s -o /dev/null -w "%{http_code}" \
	  -H "Authorization: Bearer ${TOKEN}" \
	  --max-time ${TIMEOUT} \
	  "$F_URL") 
	
	if [[ "$CODE" = "200" ]]; then
		echo -e "[${GREEN}OK${RESET}] $IP => ${GREEN}$CODE${RESET}"
	elif [[ "$CODE" = "401" || "$CODE" = "403" ]]; then
		echo -e "[${GREEN}OK${RESET}] $IP => ${GREEN}$CODE${RESET}"
	else
		echo -e "[${GRAY}OK${RESET}] $IP => ${RED}$CODE${RESET}"
 	fi
done
 
