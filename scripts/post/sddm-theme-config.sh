#!/usr/bin/env bash

set -oue pipefail

systemctl enable sddm.service

systemctl set-default graphical.target

echo "QML_DISABLE_DISK_CACHE=1" >> /etc/sysconfig/sddm

echo -e "[General]\nDisplayServer=wayland\nGreeterEnvironment=QT_WAYLAND_SHELL_INTEGRATION=layer-shell\n[Wayland]CompositorCommand=" > /usr/etc/sddm.conf.d/current.conf


#cp /usr/share/sddm/themes/sugar-dark/theme.conf /usr/etc/sddm.conf.d/theme.conf

#echo -e "[Theme]\nCurrent=sugar-dark" > /usr/etc/sddm.conf.d/current_theme.conf