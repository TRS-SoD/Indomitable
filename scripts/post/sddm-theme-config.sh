#!/usr/bin/env bash

set -oue pipefail

systemctl enable sddm.service

systemctl set-default graphical.target

echo "QML_DISABLE_DISK_CACHE=1" >> /etc/sysconfig/sddm

#systemctl isolate graphical.target

#cp /usr/share/sddm/themes/sugar-dark/theme.conf /usr/etc/sddm.conf.d/theme.conf

#echo -e "[Theme]\nCurrent=sugar-dark" > /usr/etc/sddm.conf.d/current.conf