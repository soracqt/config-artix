#!/bin/sh
set -euo pipefail
sudo cp -r etc/ /
sudo cp -r usr/ /
rsync -av dotfiles/. ~
echo -e 'tmpfs   /tmp         tmpfs   rw,nodev,nosuid,size=4G          0  0
tmpfs   /home/takumi/.cache      tmpfs   noatime,nodev,nosuid,size=2G  0       0'|sudo tee -a /etc/fstab
sudo chattr +i /etc/resolv.conf
sudo chmod 700 /boot /etc/{iptables,arptables} || true
sudo pacman -S virt-manager --noconfirm
sudo gpasswd -a $USER libvirt
sudo chmod 0640 /etc/sudoers.d/*
