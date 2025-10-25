#!/bin/bash
red='\e[31m'
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
ColorRed(){
  echo -ne "${red}$1${clear}"
}
ColorGreen(){
echo -ne $green$1$clear
}
ColorBlue(){
echo -ne $blue$1$clear
}
git_uploader(){
	chmod +x git_uploader.sh
	./git_uploader.sh
}
pkg_installer(){
	chmod +x automate_updater.sh
	./automate_updater.sh
}
auto_mounter(){
	chmod +x auto_mounter.sh
	./auto_mounter.sh
}
api_checker(){
	chmod +x api_checker.sh
	./api_checker.sh
}
menu(){
  echo -e "\nMenu:"
  ColorGreen "  1)"; echo " Github Repository Uploader"
  ColorGreen "  2)"; echo " Essential package installer"
  ColorGreen "  3)"; echo " Driver auto mounter"
  ColorGreen "  4)"; echo " Api Checker"
  ColorGreen "  0)"; echo " Exit"
  echo

  ColorBlue "Choose your option: "
  read option

  case $option in
    1)
      git_uploader
      menu
      ;;
    2)
      pkg_installer
      menu
      ;;
    3)
      auto_mounter
      menu
      ;;
    4)
      api_checker
      menu
      ;;
    0)
      exit 0
      ;;
    *)
      ColorRed "Wrong option, please try again!\n"
      menu
      ;;
  esac
}

menu
