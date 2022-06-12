#!/bin/sh
set -euo pipefail
# sudo rsv list --enabled | grep -v agetty | awk -F: '{print $2}' |sed 's|\ ||g' | sort -f > daemon.txt
sudo rsv enable alsa
sudo rsv enable avahi-daemon
sudo rsv enable backlight
sudo rsv enable bluetoothd
sudo rsv enable cupsd
sudo rsv enable dbus
sudo rsv enable seatd
sudo rsv enable firewalld
sudo rsv enable libvirtd
sudo rsv enable NetworkManager
sudo rsv enable ntpd
sudo rsv enable tlp
sudo rsv enable udevd
sudo rsv enable usbguard
sudo rsv enable virtlockd
sudo rsv enable virtlogd
sudo rsv enable thermald
sudo rsv enable cpupower
sudo rsv enable stubby
