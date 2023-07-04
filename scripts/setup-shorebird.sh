#!/bin/bash

curl --proto '=https' --tlsv1.2 https://raw.githubusercontent.com/shorebirdtech/install/main/install.sh -sSf | bash -s -- --force

install_path=$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.shorebird" || printf %s "${XDG_CONFIG_HOME}/shorebird")
echo PATH="$PATH":"$install_path/bin" >> $CM_ENV
echo "Added $install_path/bin to CM_ENV"