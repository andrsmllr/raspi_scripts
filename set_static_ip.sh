#!/bin/sh
# Set a static IP address for Raspberry Pi Zero.
# Must be executed while logged into Raspberry Pi Zero running Raspbian.

echo "interface wlan0" >> /etc/dhcpcd.conf
echo "static ip_address=192.168.0.100/24" >> /etc/dhcpcd.conf
echo "static routers=192.168.0.1" >> /etc/dhcpcd.conf
echo "static domain_name_servers=8.8.8.8" >> /etc/dhcpcd.conf
