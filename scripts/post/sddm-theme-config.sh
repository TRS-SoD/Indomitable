#!/usr/bin/env bash

set -oue pipefail

<<<<<<< HEAD
#systemctl enable sddm
=======
systemctl enable sddm.service
>>>>>>> 69f0e63 (one more try)

#systemctl set-default graphical.target

<<<<<<< HEAD
cp /usr/share/sddm/themes/sugar-dark/theme.conf /etc/sddm.conf.d/theme.conf
=======
#systemctl isolate graphical.target

#cp /usr/share/sddm/themes/sugar-dark/theme.conf /usr/etc/sddm.conf.d/theme.conf

#echo -e "[Theme]\nCurrent=sugar-dark" > /usr/etc/sddm.conf.d/current.conf
>>>>>>> 69f0e63 (one more try)
