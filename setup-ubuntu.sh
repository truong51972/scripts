#!/bin/bash

source utils/utils.sh

source installers/basic.sh
read -p "$(color_text "Install zsh and oh-my-zsh? (y/n): " "green")" install_zsh
if [ "$install_zsh" = "y" ] || [ "$install_zsh" = "Y" ]; then
    source installers/zsh.sh
    source installers/powerlevel10k.sh
fi

source installers/auto_direct_dir.sh
source installers/keychain.sh
source installers/python.sh

read -p "$(color_text "Install docker? (y/n): " "green")" create_key
if [ "$create_key" = "y" ] || [ "$create_key" = "Y" ]; then
    source installers/docker.sh

    read -p "$(color_text "Install nvidia container toolkit? (y/n): " "green")" nvtoolkit
    if [ "$nvtoolkit" = "y" ] || [ "$nvtoolkit" = "Y" ]; then
        source installers/nvidia-container-toolkit.sh
    fi
fi

source installers/zoxide.sh
source installers/k8s.sh

source installers/clean.sh