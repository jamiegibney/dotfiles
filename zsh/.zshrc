PS1="%B%n@%m %1~ %#%b "

export PATH=$PATH:/opt/homebrew/bin
export JAVA_HOME="/usr/bin/java"
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
