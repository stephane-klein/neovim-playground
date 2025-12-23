#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

export NVIM_APPNAME="neovim_playground"

if [ ! -h ~/.config/$NVIM_APPNAME ]; then
    ln -s "${SCRIPT_DIR}/config" "${HOME}/.config/${NVIM_APPNAME}"
fi

ls -lha ~/.config/neovim_playground

nvim $@
