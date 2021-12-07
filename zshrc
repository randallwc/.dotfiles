# ~/.zshrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# set up prompt
# https://unix.stackexchange.com/questions/369847/how-to-configure-zsh-prompt-so-that-its-length-is-proportional-to-terminal-width
setopt prompt_subst # real time reevaluation of prompt
zmodload zsh/mathfunc # int function
function widthHelper() { echo $(( int(${COLUMNS:-80}) * ${1}/100)) } # calc $1% of prompt
outWidth='$(widthHelper 40)'
inWidth='$(widthHelper 90)'
export PROMPT="%F{cyan}%${outWidth}<◀︎<%f" # truncation based on terminal width
PROMPT+="%(0l." # inner truncation group
PROMPT+="%F{cyan}%8>‣>%n%>>%f" # username truncated
PROMPT+="%-${inWidth}(l. %F{blue}%5>‣>%m%>>%f.) " # hostname truncated
PROMPT+=".)" # end truncation
PROMPT+="%F{magenta}%1~%f%<< " # pwd 1 depth
PROMPT+="%# " # privilege group
export RPROMPT="%(?..%F{red}[%?] %f)" # exit code displayed only if not 0
RPROMPT+="%F{yellow}%*%f" # time

# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# tab complete select visually
zstyle ':completion:*' menu select
# shift tab tab completes backwards
bindkey '^[[Z' reverse-menu-complete
# initialize advanced tab completion
autoload -Uz compinit && compinit
# tab completion with highlighting
zmodload -i zsh/complist

# make bash help command work in zsh
help() { bash -c "help $1" }

# alias to source .zshrc
alias src='[ -r ~/.zshrc ] && . ~/.zshrc'

# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/williamrandall/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/williamrandall/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/williamrandall/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/williamrandall/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# enable zsh iterm2 shell integration
# https://iterm2.com/documentation-utilities.html
# https://iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
