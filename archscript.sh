#!/bin/bash

# Update System
sudo pacman -Syu 

# Fonts
sudo pacman -S noto-fonts noto-fonts-emoji adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts cantarell-fonts freetype2 ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans

# Utils
sudo pacman -S hwdetect pacman-contrib pkgfile reflector rebuild-detector efitools ntp unrar unzip xz power-profiles-daemon upower dhclient dnsmasq dnsutils ethtool gnu-netcat nbd ndisc6 git rsync wget hwinfo findutils  nmap nss-mdns ppp pptpclient rp-pppoe openssh sshfs usb_modeswitch whois xl2tpd accountsservice bash-completion libopenraw libgsf mlocate poppler-glib xdg-utils xdg-user-dirs

# FirewallD
sudo pacman -S firewalld python-pyqt5 python-capng

# Nvidia Driver
#sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia-settings

# AMDGPU Open Source para placas mais recentes
sudo pacman -S --needed mesa mesa-utils xf86-video-amdgpu xf86-video-ati lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau

# Intel Driver
#sudo pacman -S --needed mesa mesa-utils xf86-video-intel lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader

# Wine
sudo pacman -S --needed wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

# Pipewire + Alsa
sudo pacman -S --needed sof-firmware alsa-firmware alsa-plugins alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack lib32-pipewire lib32-pipewire-jack wireplumber rtkit gst-plugin-pipewire gst-libav gst-plugins-bad gst-plugins-ugly 

# Gnome Desktop
sudo pacman -S xorg gnome gnome-tweaks xdg-utils xdg-user-dirs libwnck3

sudo systemctl enable gdm

# KDE Plasma
#sudo pacman -S xorg plasma kde-applications plasma-wayland-session xdg-utils xdg-user-dirs libwnck3

#sudo systemctl enable sddm
