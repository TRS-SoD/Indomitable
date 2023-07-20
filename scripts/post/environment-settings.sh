#!/usr/bin/env bash

set -oue pipefail

printf 'export SDL_VIDEODRIVER=wayland\n' | tee -a /etc/profile
printf 'export _JAVA_AWT_WM_NONREPARENTING=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORM=wayland\n' | tee -a /etc/profile
printf 'export XDG_CURRENT_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export XDG_SESSION_DESKTOP=sway\n' | tee -a /etc/profile
printf 'export GDK_BACKEND="wayland,x11"\n' | tee -a /etc/profile
printf 'export MOZ_ENABLE_WAYLAND=1\n' | tee -a /etc/profile
printf 'export QT_QPA_PLATFORMTHEME=qt5ct\n' | tee -a /etc/profile