#!/usr/bin/env sh
runsvdir ~/.config/runit/runsvdir &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
mako &
gammastep &
thunar --daemon &
fcitx5 &
/usr/lib/kdeconnectd &
keepassxc --localconfig $HOME/.config/keepassxc/keepassxc.ini &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
wl-paste -pw wl-copy &
