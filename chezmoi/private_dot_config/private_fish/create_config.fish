#!/usr/bin/env fish

# ~/.config/fish/config.fish
# not main config, but sourced by fish

# remove fish greeting
if status is-interactive
    set -g fish_greeting
end

# set fish theme (dark default)
fish_config theme choose catppuccin-frappe
# fish_config theme choose catppuccin-latte
