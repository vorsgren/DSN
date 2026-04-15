#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

echo "Select SSID"

select ssid in $(iw $(ip addr | grep wl | head -1 | awk '{print substr($0,4,6)}') scan | grep SSID | grep -wv 'List\|HESSID' | cut -c 8-); #this line slow
	do 
		echo "Enter Password for" $ssid
		read $passphrase #why odd pause?
		wpa_passphrase $ssid $passphrase >> /etc/wpa_supplicant/wpa_supplicant.conf
		break
	done
# Add section that makes sure you are connected.
