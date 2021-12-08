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
" compare plugin managers
    " (https://github.com/junegunn/vim-plug)
    " (https://github.com/zsh-users/antigen)
    " (https://github.com/VundleVim/Vundle.vim)
" add comment fix plugin (https://github.com/tpope/vim-commentary)
" add surround to surround text with stuff
    " (https://github.com/tpope/vim-surround)
" add nerd tree (https://github.com/preservim/nerdtree)
    " <leader>n for shortcut (look at video for better one)
    " syntax highlighting in vim
        " (https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
" look at float terminal (https://github.com/voldikss/vim-floaterm)
" look at git fugative for like in vim Git and other stuff
    " (https://github.com/tpope/vim-fugitive)
" look at polyglot for language functionality
    " (https://github.com/sheerun/vim-polyglot)
" look at highlight url (https://github.com/itchyny/vim-highlighturl)
" look at fzf for fuzzy file find (https://github.com/junegunn/fzf)
" look at coc for code completon and ide stuff
    " (https://github.com/neoclide/coc.nvim)
" look at projectionist for jumping from code to tests
    " (https://github.com/tpope/vim-projectionist)
" look at vim test for running unit tests within vim
    " (https://github.com/vim-test/vim-test)
" look at vim dim inactive windows
    " (https://github.com/blueyed/vim-diminactive)
" maybe look at xml deletion stuff
    " (https://github.com/whatyouhide/vim-textobj-xmlattr)
" maybe look at instant markdown creator
    " (https://github.com/instant-markdown/vim-instant-markdown)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ENV
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

if !isdirectory($HOME . '/.vim/undo')
    call mkdir($HOME . '/.vim/undo', 'p')
endif

if !isdirectory($HOME . '/.vim/swap')
    call mkdir($HOME . '/.vim/swap', 'p')
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set breakindent " indents word-wrapped lines as much as the parent line
set confirm
set copyindent " copy the previous indentation on autoindenting
set directory=~/.vim/swap//
set expandtab
set foldmethod=syntax " files fold based on syntax
set formatoptions=jrolq
set hidden " this lets you use buffers in the right way
set history=1000 " remember more commands and search history
set hlsearch " enable hightlighting when searching
set ignorecase " ignore case when searching
set incsearch " incremental searching
set laststatus=2 " always show statusline
set linebreak
set linebreak " wrap long lines
set list " show hidden chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set nofoldenable " files not folded on open
set path+=** " Search down into subfolders
set ruler " show percent down page " useless with statusline
set scrolloff=5 " keep a certain ammount of context
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4
set showbreak=↪\ "show line wrap
set showcmd " show command which is being typed
set showmatch " set show matching parenthesis
set sidescrolloff=10
set smartcase " search is case insensitive unless one is capital
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set splitright
set statusline=\ %f%=%m%y%r\ %P\ %l\  " show filename
set swapfile
set tabstop=4
set textwidth=80
set title " change the terminal's title
set titlelen=70
set titlestring=%<%F%=%P "filename & percent down screen
set undodir=$HOME/.vim/undo// " where to save undo histories
set undofile " Save undos after file closes
set undolevels=1000 " How many undos
set undoreload=10000 " number of lines to save
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu " Display all matching files when we tab complete
set wrap " enable softwrap of words

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" HIGHLIGHTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi StatusLine ctermfg=blue ctermbg=white
hi StatusLineNC ctermfg=lightmagenta ctermbg=magenta
hi VertSplit ctermfg=lightblue ctermbg=white

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
map <leader>vimrc :e $MYVIMRC<cr>

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

if !has('gui_running') " colored vim
    set t_Co=256
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" AUTOCMD
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://learnvimscriptthehardway.stevelosh.com/chapters/14.html
augroup saving_vimrc
    autocmd!
    autocmd BufWritePost vimrc echom "sourcing vimrc"
    autocmd BufWritePost vimrc source $MYVIMRC
    autocmd BufWritePost .vimrc echom "sourcing vimrc"
    autocmd BufWritePost .vimrc source $MYVIMRC
augroup END

augroup pip_python
    autocmd!
    autocmd filetype python :echom "expanding tabs in python file"
    autocmd filetype python set expandtab
augroup END

augroup custom_highlighting
    autocmd!
    " show trailing spaces
    autocmd VimEnter,WinEnter * match ErrorMsg '\s\+$'
augroup END

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
