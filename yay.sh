#!/bin/bash

cd
git clone https://aur.archlinux.org/yay 
cd yay
makepkg -si 

echo "Installing wofi wlogout etc..."
    yay -S swaylock-effects wlogout mako xdg-desktop-portal-hyprland-git rofi  waypaper swaybg wlogout
echo "Installing polkit "
    yay -S swappy grim slurp thunar polkit-gnome python-requests pamixer
echo "Installing brightnessctl, pavucontrol etc ..."
    yay -S pavucontrol brightnessctl bluez bluez-utils blueman 
echo "Installing network-manager-applet..."
    yay -S network-manager-applet gvfs thunar-archive-plugin file-roller btop 
echo "Installing fonts"
	yay -S starship ttf-jetbrains-mono-nerd noto-fonts-emoji 
cho "Installing Outer  Apps"
	yay -S anydesk-bin vscodium-bin qBittorrent nwg-look-bin telegram-desktop sddm-git waybar-module-pacman-updates-git