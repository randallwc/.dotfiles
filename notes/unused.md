# UNUSED THINGS FROM DIFFERENT PLACES

# ZSHRC

```bash
##############################################################################
## UNUSED SECTION
##############################################################################
## OLD PROMPT
##############################################################################
# left prompt
export PROMPT='%F{cyan}%7>>%n%>>%f %F{magenta}%1~%f%<< %(?..%F{red}%? %f)%# '
# right prompt
export RPROMPT='%F{yellow}%*%f'
##############################################################################
autoload -Uz add-zsh-hook
add-zsh-hook chpwd prompt_chpwd
prompt_chpwd() { pwd } # say working directory every time you change directory
##############################################################################
## SET UP VERSION CONTROL # removed because it was kinda slow
##############################################################################
# links
# https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html
# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
# https://xana.scru.org/xana2/quanks/vcsinfoprompt/
# https://stephencharlesweiss.com/zsh-hooks
# https://opensource.apple.com/source/zsh/zsh-61/zsh/Misc/vcs_info-examples.auto.html
# https://git-scm.com/book/tr/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
##############################################################################
autoload -Uz vcs_info # enable getting info about version control
# call this to enable showing git branch
precmd() { vcs_info }
zstyle ':vcs_info:*' disable bzr cdv cvs darcs fossil hg mtn p4 svk svn tla
zstyle ':vcs_info:*' check-for-changes true
# format how version control is displayed
zstyle ':vcs_info:git*' formats "%F{green}%b%f%F{red}%m%u%c%f%F "
RPROMPT+='${vcs_info_msg_0_}' # show git branch iff in a repo
##############################################################################
## prompt too slow
##############################################################################
# https://unix.stackexchange.com/questions/369847/how-to-configure-zsh-prompt-so-that-its-length-is-proportional-to-terminal-width
##############################################################################
# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
##############################################################################
setopt prompt_subst # real time reevaluation of prompt
zmodload zsh/mathfunc # int function
##############################################################################
## set up dynamic width
##############################################################################
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
```

# VIMRC

```vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" UNUSED SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorcolumn=80 " color past a certain number of chars
"highlight ColorColumn ctermbg=8 " set color of highlight to gray
augroup show_trailing_spaces
    autocmd!
    " show trailing spaces
    autocmd VimEnter,WinEnter * match ErrorMsg '\s\+$'
augroup END

if has('gui_running')
    colorscheme macvim
    set background=dark
else
    colorscheme default
endif

highlight VertSplit ctermfg=darkblue ctermbg=white guifg=white guibg=darkblue
highlight MatchParen cterm=bold ctermfg=magenta ctermbg=lightmagenta
highlight LineNr ctermfg=grey guifg=#a9a9a9 guibg=NONE
highlight LineNrAbove ctermfg=darkgrey guifg=#696969
highlight LineNrBelow ctermfg=darkgrey guifg=#696969
highlight Search guibg=yellow
highlight IncSearch cterm=bold ctermfg=white ctermbg=172 gui=bold guifg=white guibg=orange
highlight ColorColumn ctermbg=236 guibg=#4d4d4d
highlight SpellBad ctermfg=white
highlight Pmenu guibg=#d7e5dc gui=NONE ctermbg=darkgrey ctermfg=lightgrey
highlight PmenuSel guibg=#b7c7b7 gui=NONE ctermfg=lightgrey ctermbg=blue
highlight PmenuSbar guibg=#bcbcbc ctermfg=magenta
highlight PmenuThumb guibg=#585858 ctermbg=lightgrey
highlight FgCocErrorFloatBgCocFloating cterm=bold ctermfg=red ctermbg=darkgrey guifg=#ff0000 guibg=#d7e5dc
highlight FgCocHintFloatBgCocFloating cterm=bold ctermfg=lightblue ctermbg=darkgrey guifg=#15aabf guibg=#d7e5dc
highlight FgCocWarningFloatBgCocFloating cterm=bold ctermfg=214 ctermbg=242 guifg=#ff922b guibg=#d7e5dc
highlight CursorColumn cterm=bold term=reverse ctermfg=blue ctermbg=NONE guibg=Grey40
highlight Folded ctermbg=236
highlight HighlightedyankRegion cterm=reverse gui=reverse
highlight GitGutterAdd cterm=bold ctermfg=green gui=bold guifg=green
highlight GitGutterChange cterm=bold ctermfg=214 gui=bold guifg=orange
highlight GitGutterDelete cterm=bold ctermfg=red gui=bold guifg=red
highlight! link SignColumn LineNr
```

# MACVIM

> NO LONGER USED
> hack for macvim to find homebrew paths for coc.nvim
> https://superuser.com/questions/31353/path-in-vim-doesnt-match-terminal
> - `sudo vim /etc/paths.d/conda_paths`
> - `:r ! echo $PATHS | tr : \\n`
> - just keep the miniconda paths

# BASHRC
```bash
# set up prompt (time machine_name current_directory)
export PS1="\t \u \h $? \W \\$ "
```
