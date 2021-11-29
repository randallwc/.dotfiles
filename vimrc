"""links"""
" https://nvie.com/posts/how-i-boosted-my-vim/
" http://kien.github.io/ctrlp.vim/
" TODO -- watch (https://vimeo.com/user1690209/videos)

"" SET
set nocompatible
set ruler " show percent down page
set showcmd " show command which is being typed
set incsearch " incremental searching
set ignorecase " ignore case when searching
set smartcase " search is case insensitive unless one is capital
set hlsearch " enable hightlighting when searching
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set path+=** " Search down into subfolders
set wildmenu " Display all matching files when we tab complete
set wildignore=*.swp,*.bak,*.pyc,*.class
set wrap " enable softwrap of words
set linebreak
let &showbreak = '↪  ' " set line wrap symbol
set tabstop=4
set shiftwidth=4
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab
set autoindent
set copyindent " copy the previous indentation on autoindenting
set scrolloff=5 " keep a certain ammount of context
set list " show hidden chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set showmatch " set show matching parenthesis
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set title " change the terminal's title
set history=1000 " remember more commands and search history
set textwidth=80

"" PLUGINS
filetype plugin indent on
runtime ftplugin/man.vim " set up vim manual TODO -- document

"" MAPS
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
" \/ will turn off highlights
nmap <silent> \/ :nohlsearch<CR>

"" CONDITIONAL
if &term =~ "xterm\\|rxvt" " change cursor based on mode
    let &t_SI="\<Esc>[3 q" " start insert mode, blinking underline cursor
    let &t_EI="\<Esc>[1 q" " end insert mode, blinking block
endif
if &t_Co > 2 || has("gui_running") " enable syntax highlighting
    syntax on
endif
if has('persistent_undo') " check if your vim version supports it
    set undofile " Save undos after file closes
    silent !mkdir -p ~/.vim/undo
    set undodir=$HOME/.vim/undo " where to save undo histories
    set undolevels=1000 " How many undos
    set undoreload=10000 " number of lines to save
endif
if has("patch-7.4.354")
    set breakindent " Indents word-wrapped lines as much as the 'parent' line
    set formatoptions=l " Ensures word-wrap does not split words
    set lbr
endif
if has('autocmd')
    autocmd filetype python set expandtab
endif

"" HIGHLIGHT
match ErrorMsg '\s\+$' " show trailing spaces

"" FUNCTIONS
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
function TrimWhiteSpace()
    %s/\s*$//
    '' " dont jump to bottom when called
endfunction
function RemoveCarriageReturn()
    %s/\r*$//
    ''
endfunction

"" unused settings
":set nu rnu " turn hybrid line numbers on
"set colorcolumn=80 " color past a certain number of chars
"highlight ColorColumn ctermbg=8 " set color of highlight to gray
"retab
