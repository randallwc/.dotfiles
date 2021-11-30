set nocompatible
" ~/.vimrc
"     __      __  ______
"    /\ \  __/\ \/\  __  \
"    \ \ \/\ \ \ \ \ \_\  \
"     \ \ \ \ \ \ \ \  _  /
"      \ \ \_/ \_\ \ \ \\  \
"       \ \____^___/\ \_\ \_\
"         \/__//__/  \/_/\/_/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""LINKS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" (plugin)
" http://kien.github.io/ctrlp.vim/
" (vim videos)
" https://vimeo.com/user1690209/videos
" (vim script book)
" https://learnvimscriptthehardway.stevelosh.com/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" TODO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" document manual in vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ENV
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent !mkdir -p ~/.vim/undo

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let showbreak="↪ "
set autoindent
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set breakindent " indents word-wrapped lines as much as the parent line
set confirm
set copyindent " copy the previous indentation on autoindenting
set expandtab
set formatoptions=l " ensures word-wrap does not split words
set history=1000 " remember more commands and search history
set hlsearch " enable hightlighting when searching
set ignorecase " ignore case when searching
set incsearch " incremental searching
set linebreak
set linebreak " wrap long lines
set list " show hidden chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set path+=** " Search down into subfolders
set ruler " show percent down page
set scrolloff=5 " keep a certain ammount of context
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4
set showcmd " show command which is being typed
set showmatch " set show matching parenthesis
set sidescrolloff=10
set smartcase " search is case insensitive unless one is capital
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set splitright
set tabstop=4
set textwidth=80
set title " change the terminal's title
set undodir=$HOME/.vim/undo " where to save undo histories
set undofile " Save undos after file closes
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu " Display all matching files when we tab complete
set wrap " enable softwrap of words

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
" set up vim manual
runtime ftplugin/man.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <space> <leader>
" force write
cmap w!! w !sudo tee % >/dev/null
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" go down even when lines wrap
nnoremap j gj
nnoremap k gk
" <space>/ will turn off highlights
nmap <silent> <leader>/ :nohlsearch<CR>
" shortcut to open vimrc and source it
map <leader>vimrc :tabe $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" CONDITIONAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &term =~ "xterm\\|rxvt" " change cursor based on mode
    let &t_SI="\<Esc>[3 q" " start insert mode, blinking underline cursor
    let &t_EI="\<Esc>[1 q" " end insert mode, blinking block
endif

if &t_Co > 2 || has("gui_running") " enable syntax highlighting
    syntax on
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" AUTOCMD
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://learnvimscriptthehardway.stevelosh.com/chapters/14.html
augroup saving_vimrc
    autocmd!
    autocmd BufWritePost .vimrc :echom "sourcing vimrc"
    autocmd BufWritePost .vimrc source $MYVIMRC
augroup END

augroup pip_python
    autocmd!
    autocmd filetype python :echom "expanding tabs in python file"
    autocmd filetype python set expandtab
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" HIGHLIGHT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show trailing spaces
match ErrorMsg '\s\+$'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
function TrimWhiteSpace()
    :echom "trimming whitespace"
    %s/\s*$//
    '' " dont jump to bottom when called
endfunction

function RemoveCarriageReturn()
    :echom "removing carriage returns"
    %s/\r*$//
    ''
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" UNUSED SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorcolumn=80 " color past a certain number of chars
"highlight ColorColumn ctermbg=8 " set color of highlight to gray
"retab
