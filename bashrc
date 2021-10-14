# set up prompt (time machine_name current_directory)
_RED=$(tput setaf 1)
_GREEN=$(tput setaf 2)
_YELLOW=$(tput setaf 3)
_BLUE=$(tput setaf 4)
_MAGENTA=$(tput setaf 5)
_CYAN=$(tput setaf 6)
_WHITE=$(tput setaf 7)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)
export PS1="${_MAGENTA}\T ${_CYAN}\u ${_BLUE}\h ${_WHITE}\$? ${_MAGENTA}\W ${_WHITE}\\$ ${_RESET}"

# alias to source .zshrc
alias src='source ~/.bashrc'

# stop the warn
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
source ~/.dotfiles/aliasrc
