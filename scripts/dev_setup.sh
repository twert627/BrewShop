#!/bin/bash

source ./utils/_colors.sh
source ./utils/_internet.sh
source ./utils/_platform.sh

main() {
    printf "${yellow}=== Linux (bash) BrewShop dev setup script (by twert) ===${reset}\n"
    check_internet
    check_os
    install_packages
}

main