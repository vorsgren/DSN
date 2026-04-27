#!/bin/bash

xbps-install -Su xbps
xbps-install -u
xbps-install base-system

#set root password

cp /proc/mounts /etc/fstab
#replace references to /dev/sdX with the UUID - figure out how to automate


#UEFI grub
if [ -f "/sys/firmware/efi"] 
xbps-install grub-x86_64-efi  # add section that automatically detects architecture and installs to i386-efi or arm64-efi depending on what it sees
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id="Void" # make sure to change target too
# add section that tries grub-install with --no-nvram if it fails with the "EFI variables not available" error

#BIOS grub
else
xbps-install grub
grub-install /dev/sdX #ask which drive you want to install to

#Ensure all packages configured correctly
xbps-reconfigure -fa

exit
