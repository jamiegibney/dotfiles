if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

# function fish_prompt
#     set -g __fish_git_prompt_show_informative_status false
#     set -g __fish_git_prompt_showuntrackedfiles false
#     set -g __fish_git_prompt_showdirtystate false
#     set -g __fish_git_prompt_showcolorhints true
#     set -g __fish_git_prompt_showupstream informative
#     printf '%s %s%s%s%s > ' (set_color blue -o) (prompt_pwd --dir-length=0) (set_color normal) (fish_git_prompt) (set_color blue -o)
# end

set -g fish_vi_key_bindings

alias rm="rm -ri" # Recursive deletion, and prompts the user.
alias du="du -hs" # Disk usage -> "human-readable" and displays an entry for each file.

function multicd
    set -l length (math (string length -- $argv) - 1)
    echo cd (string repeat -n $length ../)
end

abbr --add dotdot --regex '^\.\.+$' --function multicd

# Rust project for arbitrary stuff
alias whatever="cd /Users/jamiegibney/Documents/dev/rust/playground/whatever && nvim ."

alias np="nowplaying-cli get artist title" # Now-playing on the CLI

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

# Make
abbr --add mr make run
abbr --add mc make check
abbr --add mcl make clean
abbr --add mex make build_export
abbr --add mrl make reload
abbr --add mrb make reload \&\& make check

# Cargo
abbr --add cr cargo run
abbr --add crr cargo run --release
abbr --add crrn cargo run --release -- -Ctarget-cpu=native
abbr --add cch cargo check
abbr --add cb cargo build
abbr --add cbr cargo build --release
abbr --add cbrn cargo build --release -- -Ctarget-cpu=native
abbr --add ct cargo test

abbr --add cnr cargo +nightly run
abbr --add cnrr cargo +nightly run --release
abbr --add cnrrn cargo +nightly run --release -- -Ctarget-cpu=native
abbr --add cnch cargo +nightly check
abbr --add cnb cargo +nightly build
abbr --add cnbr cargo +nightly build --release
abbr --add cnbrn cargo +nightly build --release -- -Ctarget-cpu=native
abbr --add cnt cargo +nightly test

# abbr --add rnew set rnew_name "rnew_$(date "+%y%m%d_%H%M")" && cd /Users/jamiegibney/Documents/dev/rust/playground/ && cargo new $rnew_name &&
#  cd $rnew_name && set -e rnew_name

# Directories
abbr --add dot cd ~/.dotfiles/
abbr --add drop cd ~/Library/CloudStorage/Dropbox/
abbr --add dev cd ~/Documents/dev/
abbr --add probe cd ~/Documents/dev/probe/
abbr --add pro cd ~/Documents/dev/pro/
abbr --add rust cd ~/Documents/dev/rust/
abbr --add c cd ~/Documents/dev/c/
abbr --add cpp cd ~/Documents/dev/cpp/
abbr --add ncfg cd ~/.dotfiles/nvim/

# Projects
abbr --add pasf cd ~/Documents/dev/cpp/pasf/
abbr --add phy cd ~/Documents/dev/cpp/physarum/
abbr --add sap cd ~/Documents/dev/cpp/sap/
abbr --add eme cd ~/Documents/dev/cpp/eme/
abbr --add asg cd ~/Documents/dev/pro/sound_reactions/sound_generators/asg/

# Resume suspended process
bind \cz "fg"

eval "$(/opt/homebrew/bin/brew shellenv)"

fish_add_path ""

function fish_prompt
    set -l __last_command_exit_status $status

    if not set -q -g __fish_arrow_functions_defined
        set -g __fish_arrow_functions_defined
        function _git_branch_name
            set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
            if set -q branch[1]
                echo (string replace -r '^refs/heads/' '' $branch)
            else
                echo (git rev-parse --short HEAD 2>/dev/null)
            end
        end

        function _is_git_dirty
            not command git diff-index --cached --quiet HEAD -- &>/dev/null
            or not command git diff --no-ext-diff --quiet --exit-code &>/dev/null
        end

        function _is_git_repo
            type -q git
            or return 1
            git rev-parse --git-dir >/dev/null 2>&1
        end

        function _hg_branch_name
            echo (hg branch 2>/dev/null)
        end

        function _is_hg_dirty
            set -l stat (hg status -mard 2>/dev/null)
            test -n "$stat"
        end

        function _is_hg_repo
            fish_print_hg_root >/dev/null
        end

        function _repo_branch_name
            _$argv[1]_branch_name
        end

        function _is_repo_dirty
            _is_$argv[1]_dirty
        end

        function _repo_type
            if _is_hg_repo
                echo hg
                return 0
            else if _is_git_repo
                echo git
                return 0
            end
            return 1
        end
    end

    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l green (set_color -o green)
    set -l blue (set_color -o blue)
    set -l normal (set_color normal)

    set -l arrow_color "$green"
    if test $__last_command_exit_status != 0
        set arrow_color "$red"
    end

    set -l arrow "$arrow_color ➜ "
    if fish_is_root_user
        set arrow "$arrow_color # "
    end

    set -l cwd $cyan(prompt_pwd | path basename)

    set -l repo_info
    if set -l repo_type (_repo_type)
        set -l repo_branch $red(_repo_branch_name $repo_type)
        set repo_info "$blue ($repo_branch$blue)"

        if _is_repo_dirty $repo_type
            set -l dirty "$yellow"
            set repo_info "$repo_info$dirty"
        end
    end

    echo -n -s ' '$cwd $repo_info $normal $arrow
end

function fish_title
    echo (fish_prompt_pwd_dir_length=1 prompt_pwd --dir-length=0)
end
