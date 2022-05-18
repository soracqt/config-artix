#!/bin/sh

GTK_IM_MODULE=fcitx 
QT_IM_MODULE=fcitx 
XMODIFIERS=@im=fcitx 
QT_QPA_PLATFORMTHEME=qt5ct 
QT_SCALE_FACTOR=1.2
GDK_DPI_SCALE=1.3 
MOZ_ENABLE_WAYLAND=1 
MOZ_DBUS_REMOTE=1
SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket 
XDG_CURRENT_DESKTOP=sway 
LIBSEAT_BACKEND=logind 
_JAVA_AWT_WM_NONREPARENTING=1
WINIT_UNIX_BACKEND=x11 
QT_QPA_PLATFORM=wayland 
FC_LANG=ja

export GTK_IM_MODULE QT_IM_MODULE XMODIFIERS QT_QPA_PLATFORMTHEME QT_SCALE_FACTOR GDK_DPI_SCALE MOZ_ENABLE_WAYLAND SSH_AUTH_SOCK XDG_CURRENT_DESKTOP LIBSEAT_BACKEND _JAVA_AWT_WM_NONREPARENTING WINIT_UNIX_BACKEND QT_QPA_PLATFORM MOZ_DBUS_REMOTE QT_FONT_DPI FC_LANG


exec dbus-launch --exit-with-session sway
