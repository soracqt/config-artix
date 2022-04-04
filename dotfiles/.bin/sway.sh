#!/bin/sh
exec env GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx QT_QPA_PLATFORMTHEME=qt5ct QT_SCALE_FACTOR=1.2 \
        MOZ_ENABLE_WAYLAND=1 \
        SSH_AUTH_SOCK=${XDG_RUNTIME_DIR}/ssh-agent.socket XDG_CURRENT_DESKTOP=sway LIBSEAT_BACKEND=logind \
        _JAVA_AWT_WM_NONREPARENTING=1 WINIT_UNIX_BACKEND=x11 QT_QPA_PLATFORM=wayland dbus-launch --exit-with-session sway
