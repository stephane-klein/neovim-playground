#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(dirname "$0")"

export XDG_CONFIG_HOME=$SCRIPT_DIR/config/
export XDG_DATA_HOME=$SCRIPT_DIR/share/
export XDG_STATE_HOME=$SCRIPT_DIR/state/
export XDG_CACHE_HOME=$SCRIPT_DIR/cache/

nvim $@
