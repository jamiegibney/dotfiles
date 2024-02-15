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
abbr --add oh open .
alias whatever="cd /Users/jamiegibney/Documents/dev/Rust/playground/whatever && nvim ."

alias rm="rm -ri" # Recursive deletion, and prompts the user.
alias du="du -hs *"
alias cd="z" # Replace cd with z for smarter completions

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
abbr --add dot cd ~/.dotfiles/
abbr --add drop cd ~/Library/CloudStorage/Dropbox/
abbr --add uni cd ~/Desktop/Uni/
abbr --add dev cd ~/Documents/dev/
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add pg cd ~/Documents/dev/Playground/ # "PlayGround"
abbr --add ncfg cd ~/.config/nvim/ # "Neovim ConFiG"
abbr --add y2 cd ~/Desktop/Uni/YEAR\\ 2/ # "Year 2"
abbr --add sf cd ~/Documents/dev/C++/SPECTRAL_FILTER # "Spectral Filter"
abbr --add ccp cd ~/Documents/dev/Rust/Uni/creative_coding/creative_coding_project/ # "Creative Coding Project"

# Resume suspended process
bind \cz "fg"

zoxide init fish | source
