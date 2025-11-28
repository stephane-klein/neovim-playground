#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

export XDG_CONFIG_HOME=$PWD/config/
export XDG_DATA_HOME=$PWD/share/
export XDG_STATE_HOME=$PWD/state/
export XDG_CACHE_HOME=$PWD/cache/

nvim $@
