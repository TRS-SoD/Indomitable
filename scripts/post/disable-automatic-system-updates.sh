#!/bin/sh

set -ouex pipefail

systemctl disable rpm-ostreed-automatic.timer
