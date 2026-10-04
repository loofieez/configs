#!/usr/bin/env fish

# ~/.config/fish/conf.d/a-xdg.fish
# bunch of exported global variables

# general exported variables
set --global --export VISUAL "zed"
set --global --export EDITOR "nvim"

# language specific exported variables
set --global --export GOPATH "$HOME/.gopath"
set --global --export GOROOT "$HOME/.goroot"

# xdg exported variables
set --global --export XDG_CACHE_HOME "$HOME/.cache"
set --global --export XDG_CONFIG_HOME "$HOME/.config"
set --global --export XDG_DATA_HOME "$HOME/.local/share"
set --global --export XDG_STATE_HOME "$HOME/.local/state"

# homebrew exported variables
set --global --export HOMEBREW_PREFIX "/opt/homebrew"
set --global --export HOMEBREW_REPOSITORY "/opt/homebrew"
set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar"
