#!/usr/bin/env bash

set -oue pipefail

cp /usr/share/sddm/themes/sugar-dark/theme.conf /etc/sddm.conf.d/theme.conf

echo -e "[Theme]\nCurrent=sugar-dark" > /etc/sddm.conf.d/current.conf