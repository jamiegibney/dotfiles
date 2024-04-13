#!/bin/bash

function get_abs_path() {
    echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

function create_link() {
    local abs_path=$(get_abs_path "$1")
    ln -si "$abs_path" "$2"
}

create_link ./bash/.bashprofile $HOME/.bashprofile
create_link ./bash/.bashrc $HOME/.bashrc

create_link ./clang/.clang-format $HOME/.clang-format
create_link ./clang/.clang-tidy $HOME/.clang-tidy

create_link ./cargo/config.toml $HOME/.cargo/config.toml

create_link ./fish/config.fish $HOME/.config/fish/config.fish

create_link ./kitty/kitty-startup.session $HOME/.config/kitty/kitty-startup.session
create_link ./kitty/kitty.conf $HOME/.config/kitty/kitty.conf

create_link ./ra-multiplex/config.toml $HOME/.config/ra-multiplex/config.toml

create_link ./config-nvim $HOME/.config/nvim

create_link ./tmux/.tmux.conf $HOME/.tmux.conf

create_link ./wezterm/.wezterm.lua $HOME/.wezterm.lua

create_link ./zsh/.zshenv $HOME/.zshenv
create_link ./zsh/.zshrc $HOME/.zshrc

echo "Done"
