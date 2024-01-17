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
abbr --add gaa git add -A
abbr --add gc git commit -m
abbr --add ghv gh repo view --web
abbr --add py python3

alias rm="rm -ri" # Recursive deletion, and prompts the user.
alias du="du -hs *"

# Vim
alias vi=vim
alias vim=nvim
abbr --add vim vim .

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
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add ncfg cd ~/.config/nvim/ 
abbr --add uni cd ~/Desktop/Uni/
abbr --add dot cd ~/.dotfiles/

# Resume suspended process
bind \cz "fg"

# osascript ~/.config/kitty/kitty_pos.scpt
