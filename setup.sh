#!/bin/sh
set -euo pipefail
sudo cp -r etc/ /
sudo cp -r usr/ /
rsync -av dotfiles/. ~
cat fstab|sudo tee -a /etc/fstab
sudo chattr +i /etc/resolv.conf
sudo chmod 700 /boot /etc/{iptables,arptables}
echo "Defaults editor=/usr/bin/rvim"|sudo tee -a /etc/sudoers
sudo pacman -S virt-manager
sudo gpasswd -a $USER libvirt
