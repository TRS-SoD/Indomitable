#!/usr/bin/env bash

set -oue pipefail

#systemctl enable sddm

#systemctl set-default graphical.target

cp /usr/share/sddm/themes/sugar-dark/theme.conf /etc/sddm.conf.d/theme.conf
