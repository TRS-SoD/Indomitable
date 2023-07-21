#!/usr/bin/env bash

set -oue pipefail

systemctl enable sddm.service

systemctl set-default graphical.target

echo "QML_DISABLE_DISK_CACHE=1" >> /etc/sysconfig/sddm

#mkdir -p /usr/etc/sddm.conf.d/
#echo -e "[General]\nDisplayServer=wayland\nGreeterEnvironment=QT_WAYLAND_SHELL_INTEGRATION=layer-shell\n[Wayland]CompositorCommand=" > /usr/etc/sddm.conf.d/current.conf

echo -e "[General]\nDisplayServer=wayland\nGreeterEnvironment=QT_WAYLAND_SHELL_INTEGRATION=layer-shell\n[Wayland]CompositorCommand=" > /etc/sddm.conf.d/current.conf

#cp /usr/share/sddm/themes/sugar-dark/theme.conf /etc/sddm.conf.d/theme.conf

#echo -e "[Theme]\nCurrent=sugar-dark" > /etc/sddm.conf.d/current_theme.conf