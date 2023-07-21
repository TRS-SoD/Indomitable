#!/usr/bin/env bash

set -oue pipefail

systemctl enable sddm.service

systemctl set-default graphical.target

echo -e "[General]\nDisplayServer=wayland\n\n[Wayland]\nCompositorCommand=" > /etc/sddm.conf.d/current.conf

cp /usr/share/sddm/themes/sugar-dark/theme.conf /etc/sddm.conf.d/theme.conf
echo -e "\n[Theme]\nCurrent=sugar-dark" >> /etc/sddm.conf.d/current.conf