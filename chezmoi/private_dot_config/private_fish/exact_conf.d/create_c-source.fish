#!/usr/bin/env fish

# ~/.config/fish/conf.d/c-source.fish
# bunch of eval, functions for sourcing.

if status is-interactive
    # fzf fish
    fzf --fish | source
    # zoxide fish
    zoxide init fish | source
end
