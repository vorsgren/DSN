#!/bin/sh

#set clocks and voltages on core
sudo sh -c "echo 's 0 300 750' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 1 610 800' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 2 910 824' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 3 1075 893' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 4 1145 956' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 5 1190 1000' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 6 1235 1000' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
sudo sh -c "echo 's 7 1265 1000' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"

#apply 120watt powerlimit
sudo sh -c "echo 120000000 > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/hwmon/hwmon1/power1_cap"

#apply to the gpu
sudo sh -c "echo 'c' > /sys/devices/pci0000:00/0000:00:03.1/0000:08:00.0/pp_od_clk_voltage"
