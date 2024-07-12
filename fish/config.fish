if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

function fish_prompt
    printf '%s %s%s%s%s > ' (set_color cyan -o) (prompt_pwd --dir-length=0) (set_color normal) (fish_git_prompt) (set_color cyan -o)
end

set -g fish_vi_key_bindings

alias rm="rm -ri" # Recursive deletion, and prompts the user.
alias du="du -hs" # Disk usage -> "human-readable" and displays an entry for each file.

# Rust project for arbitrary stuff
alias whatever="cd /Users/jamiegibney/Documents/dev/Rust/playground/whatever && nvim ."

# Commands
abbr --add cpwd "pwd | tr -d '\n' | pbcopy" # "Copy Parent Working Directory"
abbr --add py python3
abbr --add oh open . # "Open Here" (in Finder)

# Git
abbr --add gs git status
abbr --add gaa git add -A
abbr --add gc git commit -m
abbr --add ghv gh repo view --web # "GitHub View"

# Vim
alias vi=vim
abbr --add vim nvim .

# Cargo
abbr --add cr cargo run
abbr --add crr cargo run --release
abbr --add crrn cargo run --release -- -Ctarget-cpu=native
abbr --add cc cargo check
abbr --add cb cargo build
abbr --add cbr cargo build --release
abbr --add cbrn cargo build --release -- -Ctarget-cpu=native
abbr --add ct cargo test

abbr --add cnr cargo +nightly run
abbr --add cnrr cargo +nightly run --release
abbr --add cnrrn cargo +nightly run --release -- -Ctarget-cpu=native
abbr --add cnc cargo +nightly check
abbr --add cnb cargo +nightly build
abbr --add cnbr cargo +nightly build --release
abbr --add cnbrn cargo +nightly build --release -- -Ctarget-cpu=native
abbr --add cnt cargo +nightly test

# abbr --add rnew set rnew_name "rnew_$(date "+%y%m%d_%H%M")" && cd /Users/jamiegibney/Documents/dev/Rust/playground/ && cargo new $rnew_name &&
#  cd $rnew_name && set -e rnew_name

# Directories
abbr --add dot cd ~/.dotfiles/
abbr --add drop cd ~/Library/CloudStorage/Dropbox/
abbr --add dev cd ~/Documents/dev/
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add pg cd ~/Documents/dev/Playground/ # "PlayGround"
abbr --add cpp cd ~/Documents/dev/C++/
abbr --add ncfg cd ~/.config/nvim/ # "Neovim ConFiG"

# Projects
abbr --add sf cd ~/Documents/dev/C++/SPECTRAL_FILTER # "Spectral Filter"
abbr --add ccp cd ~/Documents/dev/Rust/Uni/creative_coding/creative_coding_project/ # "Creative Coding Project"

# Uni
abbr --add uni cd ~/Desktop/Uni/
abbr --add y2 cd ~/Desktop/Uni/YEAR\\ 2/ # "Year 2"
abbr --add y3 cd ~/Desktop/Uni/YEAR\\ 3/ # "Year 3"
abbr --add mw cd ~/Desktop/Uni/YEAR\\ 2/Middleware/ # "Middleware"
abbr --add rp cd ~/Desktop/Uni/YEAR\\ 2/Research\\ Practice/ # "Research Practice"
abbr --add ip cd ~/Desktop/Uni/YEAR\\ 2/Industry\\ Practice/ # "Industry Practice"
abbr --add ip2 cd ~/Documents/Unity/SpaceStation\\ FMOD/Assets/ # "Industry Practice project #2"
abbr --add courts cd ~/Documents/Unity/CYN-Courts\\ \\\(1\\\)/Assets/Scripts/
abbr --add cfmod cd ~/Documents/Unity/CYN-Courts\\ FMOD/cyn-courts-fmod2_03/

# Resume suspended process
bind \cz "fg"

#zoxide init fish | source

#export VCPKG_ROOT=/Users/jamiegibney/Documents/dev/Libraries\ and\ Frameworks/vcpkg
# export PATH=$VCPKG_ROOT:$PATH

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

export CXX=/Library/Developer/CommandLineTools/usr/bin/clang++
export CC=/Library/Developer/CommandLineTools/usr/bin/clang
