#!/bin/sh
# Set up WIFI by writing to the Raspbian SD card.
# Must be executed in the /boot partition of the Raspbian SD card.
#
# Ref.:
# https://raspberrypi.stackexchange.com/questions/10251/prepare-sd-card-for-wifi-on-headless-pi

echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev' >> ./wpa_supplicant.conf
echo 'update_config=1' >> ./wpa_supplicant.conf
echo 'country=US' >> ./wpa_supplicant.conf
echo 'network={' >> ./wpa_supplicant.conf
echo 'ssid=YOUR_WIFI_SSID' >> ./wpa_supplicant.conf
echo 'psk=YOUR_WIFI_PASSWORD' >> ./wpa_supplicant.conf
echo 'key_mgmt=WPA-PSK' >> ./wpa_supplicant.conf
echo '}' >> ./wpa_supplicant.conf
