if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

function fish_prompt
    printf '%s %s%s%s%s > ' (set_color cyan -o) (prompt_pwd --dir-length=0) (set_color normal) (fish_git_prompt) (set_color cyan -o)
end

set -g fish_vi_key_bindings

# Abbreviations
abbr --add cpwd "pwd | tr -d '\n' | pbcopy"
abbr --add gs git status

alias rm="rm -ri" # Recursive deletion, and prompts the user.

# Vim
alias vi=vim
alias vim=nvim
abbr --add vv nvim .

# Cargo
abbr --add cr cargo run
abbr --add crr cargo run --release

abbr --add cc cargo check
abbr --add ccr cargo check --release

abbr --add cb cargo build
abbr --add cbr cargo build --release

abbr --add ct cargo test

# Directories
abbr --add dev cd ~/Documents/dev/
abbr --add ccp cd ~/Documents/dev/Rust/Uni/creative_coding/creative_coding_project/
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add ncfg cd ~/.config/nvim/ 
abbr --add uni cd ~/Desktop/Uni/
abbr --add dot cd ~/.dotfiles/

# Resume suspended process
bind \cz "fg"

# osascript ~/.config/kitty/kitty_pos.scpt
