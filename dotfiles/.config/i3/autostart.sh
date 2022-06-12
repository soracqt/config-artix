#!/usr/bin/env sh
picom -b &
imwheel &
gammastep -m randr &
thunar --daemon &
fcitx5 &
/usr/lib/kdeconnectd &
keepassxc --localconfig $HOME/.config/keepassxc/keepassxc.ini &
xss-lock -n dim-screen.sh -- i3lock -n -c 100000 -i ~/Pictures/kittyboard_wall_resize.png &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
xfce4-clipman &
