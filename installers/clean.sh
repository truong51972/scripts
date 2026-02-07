sudo apt autoremove -y && sudo apt autoclean -y

read -p "$(color_text "Reboot now? (y/n): " "green")" reboot
if [ "$reboot" = "y" ] || [ "$reboot" = "Y" ]; then
    sudo reboot
fi