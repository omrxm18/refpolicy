#!/usr/bin/env bash

if grep -Eq '^[[:space:]]*NEW_TYPES[[:space:]]*=[[:space:]]*y[[:space:]]*$' build.conf; then
    command cp custom/services/{tailscaled,lxc}/* policy/modules/services
elif grep -Eq '^[[:space:]]*ALL_TYPES[[:space:]]*=[[:space:]]*y[[:space:]]*$' build.conf; then
    command cp custom/services/**/* policy/modules/services
    command cp custom/users/**/* policy/modules/roles
    command cp custom/applications/**/* policy/modules/apps
    command cp custom/extensions/* policy/modules/services
fi