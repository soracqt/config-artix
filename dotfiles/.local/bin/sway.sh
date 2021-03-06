#!/bin/sh

GTK_IM_MODULE=fcitx 
QT_IM_MODULE=fcitx 
XMODIFIERS=@im=fcitx 
QT_QPA_PLATFORMTHEME=qt5ct 
QT_SCALE_FACTOR=1.25
GDK_DPI_SCALE=1.25 
MOZ_ENABLE_WAYLAND=1 
MOZ_DBUS_REMOTE=1
SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
XDG_CURRENT_DESKTOP=sway 
LIBSEAT_BACKEND=seatd
_JAVA_AWT_WM_NONREPARENTING=1
WINIT_UNIX_BACKEND=x11 
QT_QPA_PLATFORM=wayland 
FC_LANG=ja
QT_FONT_DPI=120
QT_AUTO_SCREEN_SCALE_FACTOR=0

export GTK_IM_MODULE QT_IM_MODULE XMODIFIERS QT_QPA_PLATFORMTHEME QT_SCALE_FACTOR GDK_DPI_SCALE MOZ_ENABLE_WAYLAND SSH_AUTH_SOCK XDG_CURRENT_DESKTOP LIBSEAT_BACKEND _JAVA_AWT_WM_NONREPARENTING WINIT_UNIX_BACKEND QT_QPA_PLATFORM MOZ_DBUS_REMOTE QT_FONT_DPI FC_LANG QT_AUTO_SCREEN_SCALE_FACTOR

exec dbus-launch --exit-with-session sway
