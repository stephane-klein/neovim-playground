#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(dirname "$0")"

export XDG_CONFIG_HOME=$SCRIPT_DIR/config/
export XDG_DATA_HOME=$SCRIPT_DIR/local/share/

mkdir -p "${XDG_DATA_HOME}nvim/swap"
mkdir -p "${XDG_DATA_HOME}nvim/backup"

export XDG_STATE_HOME=$SCRIPT_DIR/local/state/
export XDG_CACHE_HOME=$SCRIPT_DIR/local/cache/
nvim $@
