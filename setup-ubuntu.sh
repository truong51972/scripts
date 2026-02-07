#!/bin/bash

bash installers/basic.sh
read -p "$(echo -e '\033[32mInstall zsh and oh-my-zsh? (y/n): \033[0m')" install_zsh
if [ "$install_zsh" = "y" ] || [ "$install_zsh" = "Y" ]; then
    bash installers/zsh.sh
    bash installers/powerlevel10k.sh
fi

bash installers/auto_direct_dir.sh
bash installers/keychain.sh
bash installers/python.sh

read -p "$(echo -e '\033[32mInstall docker? (y/n): \033[0m')" create_key
if [ "$create_key" = "y" ] || [ "$create_key" = "Y" ]; then
    bash installers/docker.sh

    read -p "$(echo -e '\033[32mInstall nvidia container toolkit? (y/n): \033[0m')" nvtoolkit
    if [ "$nvtoolkit" = "y" ] || [ "$nvtoolkit" = "Y" ]; then
        bash installers/nvidia-container-toolkit.sh
    fi
fi

bash installers/clean.sh