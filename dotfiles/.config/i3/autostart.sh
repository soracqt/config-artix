#!/usr/bin/env sh
picom -b &
imwheel &
gammastep -m randr &
/usr/bin/Thunar --daemon &
/usr/bin/firewall-applet &
/usr/bin/fcitx5 &
/usr/lib/kdeconnectd &
keepassxc --localconfig $HOME/.config/keepassxc/keepassxc.ini &
xss-lock -n dim-screen.sh -- i3lock -n &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets &
