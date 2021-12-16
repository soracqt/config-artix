#!/usr/bin/env sh
picom -b &
imwheel &
gammastep -m randr &
/usr/bin/Thunar --daemon &
/usr/bin/firewall-applet &
/usr/lib/geoclue-2.0/demos/agent &
/usr/bin/fcitx5 &
/usr/lib/kdeconnectd &
keepassxc --localconfig $HOME/.config/keepassxc/keepassxc.ini &
xss-lock --transfer-sleep-lock -- i3lock --nofork -c 000000 &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets &
