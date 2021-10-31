# set up prompt (time machine_name current_directory)
export PROMPT='%F{yellow}%*%f %F{cyan}%n%f %F{blue}%m%f %F{white}%?%f %F{magenta}%1~%f %# '

# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# tab complete select visually
zstyle ':completion:*' menu select
# initialize advanced tab completion
autoload -Uz compinit && compinit
# tab completion with highlighting
zmodload -i zsh/complist

# alias to source .zshrc
alias src='source ~/.zshrc'

# aliases
source ~/.dotfiles/aliasrc

# notes
# esc-q -- stash command

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
# You will also have these commands:
# imgcat filename
#   Displays the image inline.
# imgls
#   Shows a directory listing with image thumbnails.
# it2api
#   Command-line utility to manipulate iTerm2.
# it2attention start|stop|fireworks
#   Gets your attention.
# it2check
#   Checks if the terminal is iTerm2.
# it2copy [filename]
#   Copies to the pasteboard.
# it2dl filename
#   Downloads the specified file, saving it in your Downloads folder.
# it2setcolor ...
#   Changes individual color settings or loads a color preset.
# it2setkeylabel ...
#   Changes Touch Bar function key labels.
# it2ul
#   Uploads a file.
# it2universion
#   Sets the current unicode version.
