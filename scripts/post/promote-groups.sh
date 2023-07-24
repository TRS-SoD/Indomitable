#!/usr/bin/env bash

set -oue pipefail

EXCLUDER="'`awk -F":" '{print $1}' ORS='|' /etc/group`'"

grep -v -E $EXCLUDER /usr/lib/group >> /etc/group