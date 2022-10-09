function check_os {
    printf "${blue}Checking OS...${reset}\n"
case `uname` in
  Linux )
     LINUX=1
    #  which yum && { echo "CentOS"; return; }
    #  which zypper && { echo "openSUSE"; return; }
     which apt-get > /dev/null 2>&1 && { printf "${green}Debian based${reset}\n"; export DISTRIB="debian"; }
     which pacman > /dev/null 2>&1 && { printf "${green}Arch based${reset}\n"; export DISTRIB="arch"; }
     ;;
  Darwin )
     DARWIN=1
     ;;
  * )
     # Handle AmigaOS, CPM, and modified cable modems.
     ;;
esac
}