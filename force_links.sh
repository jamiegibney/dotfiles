#!/bin/bash

function get_abs_path() {
    echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

function create_link() {
    local abs_path=$(get_abs_path "$1")
    ln -sf "$abs_path" "$2"
}

create_link ./bash/.bashprofile ~/.bashprofile
create_link ./bash/.bashrc ~/.bashrc

create_link ./clang/.clang-format ~/.clang-format
create_link ./clang/.clang-tidy ~/.clang-tidy

create_link ./fish/config.fish ~/.config/fish/config.fish

create_link ./kitty/kitty-startup.session ~/.config/kitty/kitty-startup.session
create_link ./kitty/kitty.conf ~/.config/kitty/kitty.conf

create_link ./config-nvim ~/.config/nvim

create_link ./tmux/.tmux.conf ~/.tmux.conf

create_link ./wezterm/.wezterm.lua ~/.wezterm.lua

create_link ./zsh/.zshenv ~/.zshenv
create_link ./zsh/.zshrc ~/.zshrc

echo "Overwrote all symbolic links"
