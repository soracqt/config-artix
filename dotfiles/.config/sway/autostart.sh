#!/usr/bin/env sh
runsvdir ~/.runit/runsvdir &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
mako &
gammastep &
/usr/bin/Thunar --daemon &
/usr/bin/firewall-applet &
/usr/lib/geoclue-2.0/demos/agent &
/usr/bin/fcitx5 &
/usr/lib/kdeconnectd &
keepassxc --localconfig $HOME/.config/keepassxc/keepassxc.ini &
/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets &
