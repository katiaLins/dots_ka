#!/bin/bash

echo "Welcome to a simple script to get a minimally customised Hyprland on Arch/Artix Linux."
read -p "Would you like to continue (y/n)? " installChoice

case "$installChoice" in
  # User wants to continue installation
  y|Y|yes|Yes|YES )

    read -p "Would you like to perform a system upgrade before continuing (y/n)? " upgradeChoice
    case "$upgradeChoice" in
      y/Y/yes/Yes/YES )
        echo "Upgrading system..."
        sudo pacman -Syu
      ;;
      n/N/no/No/NO )
        echo "Skipping system upgrade."
      ;;
    esac

    echo "Preparing to install other packages..."
    ler \
         
      echo "Installing file managers..."
        sudo pacman -S thunar thunar-volman thunar-media-tags-plugin thunar-archive-plugin xdg-user-dirs xdg-utils gvfs-mtp tumbler ffmpegthumbnailer
      
      echo "Installing utilities and system tools..."
        sudo pacman -S dunst swayidle swaybg libsixel wl-clipboard gvfs-mtp plymouth tlp tlp-rdw
      
      echo "Installing additional applications..."
        sudo pacman -S neofetch htop konsole xfce4-terminal timeshift qt5-devel exa bat grub-customizer hplip qbittorrent
        
        # Edit the following list of additional applications or replace them with your own preferences
        
        # Code editor
        echo "Installing Text Editors..."
        sudo pacman -S micro geany
        
        # PDF reader
        echo "Installing PDF Viewer..."
        sudo pacman -S okular
        
        # Web browser
        echo "Installing Firefox..."
        sudo pacman -S firefox
        sudo pacman -S ninja gcc wayland-protocols libjpeg-turbo libwebp pango cairo pkgconf cmake libglvnd wayland
        
        # Screenshot utility
        echo "Installing Screenshot Utility..."
        sudo pacman -S grim slurp jq
        
        # Image editor
        echo "Installing Image Viewer..."
        sudo pacman -S lximage-qt
        
        # Office suite
        echo "Installing LibreOffice..."
        sudo pacman -S libreoffice-fresh
        
        # Audio and video player
        echo "Installing Video Player..."
        sudo pacman -S mpv
        
        # Audio recording and streaming
        #echo "Installing Screen Recording Applications..."
        #sudo pacman -S obs-studio wf-recorder
        
                
    #echo "Configuring system..."
    #  echo "Setting up services..."
    #    sudo systemctl enable sddm.service
    #    sudo systemctl enable bluetooth.service
     #   sudo systemctl enable tlp.service
        
    echo "Starting services..."
	#sudo systemctl start bluetooth.service
   #     sudo systemctl start tlp.service
	#sudo systemctl start sddm.service
        	
    echo "All done! Please reboot for all changes to take effect."
  ;;

  # User does not want to continue installation.
  n|N|no|No|NO )
    echo "Thanks for trying, Goodbye!";;
esac
