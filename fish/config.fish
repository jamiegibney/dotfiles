if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

function fish_prompt
    printf '%s %s > ' (set_color cyan -o) (prompt_pwd --dir-length=0)
end

set -g fish_vi_key_bindings

# Abbreviations

abbr --add cpwd "pwd | tr -d '\n' | pbcopy"
abbr --add cl clear

# Vim
abbr --add vi vim .
abbr --add vim nvim .

# Cargo
abbr --add cr cargo r
abbr --add crr cargo r -r

abbr --add cc cargo check
abbr --add ccr cargo check -r

abbr --add cb cargo build
abbr --add cbr cargo build -r

abbr --add ct cargo test

# Directories
abbr --add dev cd ~/Documents/dev/
abbr --add ccp cd ~/Documents/dev/Rust/Uni/creative_coding/creative_coding_project/
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add ncfg cd ~/.config/nvim/ 
abbr --add uni cd ~/Desktop/Uni/

# Resume suspended process
# bind -k nul "fg"
bind \cz "fg"

# osascript ~/.config/kitty/kitty_pos.scpt
