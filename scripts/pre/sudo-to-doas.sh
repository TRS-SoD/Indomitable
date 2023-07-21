#!/usr/bin/env bash

set -oue pipefail

rm /etc/dnf/protected.d/sudo.conf

rpm-ostree override remove \
  sudo \
  sudo-python-plugin 

rpm-ostree install -y \
  opendoas

echo "opendoas" >> /etc/dnf/protected.d/doas.conf 

echo  "permit persist keepenv :wheel" > /etc/doas.conf
echo  "permit persist keepenv :sudo" >> /etc/doas.conf
echo  "permit nopass root as root" >> /etc/doas.conf
echo  "permit nopass :plugdev as root cmd /usr/bin/smartctl" >> /etc/doas.conf
echo  "#deny :wheel cmd su" >> /etc/doas.conf
echo  "#deny :sudo cmd su" >> /etc/doas.conf

chmod 644 /etc/doas.conf
chown root:root /etc/doas.conf
