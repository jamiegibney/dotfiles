if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

function fish_prompt
    set -g __fish_git_prompt_show_informative_status false
    set -g __fish_git_prompt_showuntrackedfiles false
    set -g __fish_git_prompt_showdirtystate false
    set -g __fish_git_prompt_showcolorhints true
    set -g __fish_git_prompt_showupstream informative
    printf '%s %s%s%s%s > ' (set_color blue -o) (prompt_pwd --dir-length=0) (set_color normal) (fish_git_prompt) (set_color blue -o)
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
abbr --add gf git fetch
abbr --add gaa git add -A # "Git add all"
abbr --add ghv gh repo view --web # "GitHub View"
abbr --add lg lazygit

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
abbr --add pro cd ~/Documents/dev/pro/
abbr --add rust cd ~/Documents/dev/Rust/
abbr --add aoc cd ~/Documents/dev/Rust/adventofcode/ # "Advent of Code"
abbr --add rpg cd ~/Documents/dev/Rust/playground/ # "Rust PlayGround"
abbr --add pg cd ~/Documents/dev/Playground/ # "PlayGround"
abbr --add cpp cd ~/Documents/dev/C++/
abbr --add ncfg cd ~/.config/nvim/ # "Neovim ConFiG"

# Projects
abbr --add pasf cd ~/Documents/dev/C++/pasf/ # "Spectral Filter"
abbr --add ccp cd ~/Documents/dev/Rust/Uni/creative_coding/creative_coding_project/ # "Creative Coding Project"
abbr --add srs cd ~/Documents/dev/pro/controlled_frenzy/sound_reactions_system/repo/
abbr --add courts cd ~/Documents/Unity/CYN-Courts\\ \\\(1\\\)/Assets/Scripts/
abbr --add cfmod cd ~/Documents/Unity/CYN-Courts\\ FMOD/cyn-courts-fmod2_03/

# Uni
abbr --add uni cd ~/Desktop/Uni/
abbr --add y2 cd ~/Desktop/Uni/YEAR\\ 2/ # "Year 2"
abbr --add y3 cd ~/Desktop/Uni/YEAR\\ 3/ # "Year 3"
abbr --add in cd ~/Desktop/Uni/YEAR\\ 3/Innovation/ # "Year 3"
abbr --add pd cd ~/Desktop/Uni/YEAR\\ 3/Product\\ Design/ # "Year 3"
abbr --add rp cd ~/Desktop/Uni/YEAR\\ 3/Research\\ Project/ # "Year 3"

# Resume suspended process
bind \cz "fg"

#zoxide init fish | source

#export VCPKG_ROOT=/Users/jamiegibney/Documents/dev/Libraries\ and\ Frameworks/vcpkg
# export PATH=$VCPKG_ROOT:$PATH

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# export CXX=/Library/Developer/CommandLineTools/usr/bin/clang++
# export CC=/Library/Developer/CommandLineTools/usr/bin/clang
