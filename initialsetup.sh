#!/bin/bash

xbps-install -Su

#setup skel

xbps-install linux-firmware void-repo-nonfree xz unzip zsh htop firefox-esr chromium mc vim neovim alsa-lib alsa-utils gcc make cmake git wget curl lm_sensors gimp libreoffice zathura thunderbird keyd mpv most obs vagrant task ntfs-3g rxvt-unicode dmenu xorg-minimal xorg-fonts wcalc feh pulseaudio pavucontrol i3lock xautolock

useradd -m # add ability to set custom user

# interactive set passwd: passwd (user you just made)

#add section that uses lscpu and lspci to determine what cpu and gpu you have, and install it.

#Intel cpu
# xbps-install linux-firmware-intel intel-ucode ######add section to regen initramfs
#Intel GPU
# xbps-install linux-formware-intel xf86-video-intel mesa-dri vulkan-loader mesa-vulkan-intel intel-video-accel intel-gpu-tools
#AMD cpu
# xbps-install linux-firmware-amd
#AMD gpu
# xbps-install linux-firmware-amd xv86-video-amdgpu mesa-dri vulkan-loader mesa-vulkan-radeon mesa-vaapi radeontop ##### add check that works to install Terascale drivers

#Nvidia GPU
# xbps-install nvidia nvtop ###### add section for nouveau, and for older archs that use proprietary driver

# add section that enables optimus automatically if it sees that there are two gpus, especially of different brands with an Nvidia card, i.e. an integrated intel gpu and discrete Nvidia gpu.

sudo sensors detect # give it default safeish scanning options


#switch to username you made


feh --bg-fill /home/$USER/wallpaper.png

chsh -s /bin/zsh

# run the symlink dotfiles script
