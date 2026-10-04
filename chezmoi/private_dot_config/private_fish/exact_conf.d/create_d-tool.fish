#!/usr/bin/env fish

# ~/.config/fish/conf.d/d-tool.fish
# exported variables for tools (specific)

# TODO: find manpagers
# export var for manpages
set --global --export MANROFFOPT "-c"
set --global --export MANPAGER "bat -l man -p"

# export var for zoxide
set --global --export _ZO_EXCLUDE_PATHS ".git"
set --global --export _ZO_DATA_DIR "$XDG_DATA_HOME/zoxide"
