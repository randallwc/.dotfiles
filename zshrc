# ~/.zshrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# SET UP PROMPT
################################################################################
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
################################################################################
setopt prompt_subst # real time reevaluation of prompt
zmodload zsh/mathfunc # int function
autoload -U colors && colors # enable colors
################################################################################
# set up dynamic width
################################################################################
# https://unix.stackexchange.com/questions/369847/how-to-configure-zsh-prompt-so-that-its-length-is-proportional-to-terminal-width
################################################################################
LENGTH_OF_USERNAME=8
LENGTH_OF_HOSTNAME=5
# calc $1% of prompt
function termWidthPercentHelper() { echo $(( int(${COLUMNS:-80}) * ${1}/100)) }
function hostNameInPromptHelper() {
    # if you are in the home directory or if you are in a directory with a name
    # that has a length which is less than $1% of the terminal's width
    if [[ ${PWD##*/} == ${HOME##*/} ]] || [[ ${#PWD##*/} -lt $(termWidthPercentHelper $1) ]] then
        echo "%F{blue}%${LENGTH_OF_HOSTNAME}>‣>%m%>>%f "
    fi
}
PROMPT_PERCENTAGE='$(termWidthPercentHelper 30)'
HOST_NAME_IN_PROMPT='$(hostNameInPromptHelper 9)'
# left prompt
export PROMPT="%F{cyan}%${PROMPT_PERCENTAGE}<◀︎<%f" # truncation based on terminal width
PROMPT+='%(l.' # inner truncation group
PROMPT+="%F{cyan}%${LENGTH_OF_USERNAME}>‣>%n%>>%f " # username truncated
PROMPT+="${HOST_NAME_IN_PROMPT}"
PROMPT+='.)' # end truncation
PROMPT+='%F{magenta}%1~%f%<< ' # pwd 1 depth
PROMPT+='%# ' # privilege group
# right prompt
export RPROMPT='%(?..%F{red}[%?] %f)' # exit code displayed only if not 0
# display the conda env only if it exists
RPROMPT+='$( [[ $CONDA_SHLVL == 1 ]] && print -P "$(basename $CONDA_DEFAULT_ENV) ")'
RPROMPT+='%F{yellow}%*%f' # time

################################################################################
# TAB COMPLETION
################################################################################
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

################################################################################
# ALIASES
################################################################################
# alias to source .zshrc
alias src='[ -r ~/.zshrc ] && . ~/.zshrc'
# make bash help command work in zsh
help() { bash -c "help $1" }
# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

################################################################################
# CONDA
################################################################################
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

################################################################################
# ITERM2 SHELL INTEGRATION
################################################################################
# https://iterm2.com/documentation-utilities.html
# https://iterm2.com/documentation-shell-integration.html
################################################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

################################################################################
## UNUSED SECTION
################################################################################
# autoload -Uz add-zsh-hook
# add-zsh-hook chpwd prompt_chpwd
# prompt_chpwd() { pwd } # say working directory every time you change directory
################################################################################
# SET UP VERSION CONTROL # removed because it was kinda slow
################################################################################
# links
# https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html
# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
# https://xana.scru.org/xana2/quanks/vcsinfoprompt/
# https://stephencharlesweiss.com/zsh-hooks
# https://opensource.apple.com/source/zsh/zsh-61/zsh/Misc/vcs_info-examples.auto.html
# https://git-scm.com/book/tr/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
################################################################################
# autoload -Uz vcs_info # enable getting info about version control
# # call this to enable showing git branch
# precmd() { vcs_info }
# zstyle ':vcs_info:*' disable bzr cdv cvs darcs fossil hg mtn p4 svk svn tla
# zstyle ':vcs_info:*' check-for-changes true
# # format how version control is displayed
# zstyle ':vcs_info:git*' formats "%F{green}%b%f%F{red}%m%u%c%f%F "
# RPROMPT+='${vcs_info_msg_0_}' # show git branch iff in a repo
