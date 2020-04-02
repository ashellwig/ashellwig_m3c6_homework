#!/usr/bin/env bash

# shellcheck source=/home/ahellwig/.zsh/settings/programmingenvs.zsh
PROGRAMMING_ENVS="$HOME/.zsh/settings/programmingenvs.zsh"

echo sed -n -e '/#s---sLaTeXs---/,/#s---sPythons---/p' "${PROGRAMMING_ENVS}" |
    sed 's/#sexport/export/g' |
    grep -e '^export'
