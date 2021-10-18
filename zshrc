# set up prompt (time machine_name current_directory)
export PROMPT='%F{yellow}%*%f %F{cyan}%n%f %F{blue}%m%f %F{white}%?%f %F{magenta}%1~%f %# '

# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# initialize advanced tab completion
autoload -Uz compinit && compinit

# alias to source .zshrc
alias src='source ~/.zshrc'

# aliases
source ~/.dotfiles/aliasrc

# notes
# esc-q -- stash command
