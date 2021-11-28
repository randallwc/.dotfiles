set nocompatible
if &t_Co > 2 || has("gui_running")
    syntax on " enable syntax highlighting
endif
set ruler " show percent down page
set showcmd " show command which is being typed
set incsearch " incremental searching
set smartcase " search is case insensitive unless one is capital
set hlsearch " enable hightlighting when searching
nmap <silent> ,/ :nohlsearch<CR>
runtime ftplugin/man.vim " set up vim manual
filetype plugin indent on
if has('autocmd')
    autocmd filetype python set expandtab
endif
set path+=** " Search down into subfolders
set wildmenu " Display all matching files when we tab complete
set wrap " enable softwrap of words
set linebreak
" going down a line with wrap on
nnoremap j gj
nnoremap k gk
let &showbreak = '↪  ' " set line wrap symbol
if &term =~ "xterm\\|rxvt" " change cursor based on mode
    let &t_SI="\<Esc>[3 q" " start insert mode, blinking underline cursor
    let &t_EI="\<Esc>[1 q" " end insert mode, blinking block
endif
if has('persistent_undo') " check if your vim version supports it
    set undofile " Save undos after file closes
    silent !mkdir -p ~/.vim/undo
    set undodir=$HOME/.vim/undo " where to save undo histories
    set undolevels=1000 " How many undos
    set undoreload=10000 " number of lines to save
endif
set tabstop=4
set shiftwidth=4
set expandtab|retab
if has("patch-7.4.354")
    set breakindent " Indents word-wrapped lines as much as the 'parent' line
    set formatoptions=l " Ensures word-wrap does not split words
    set lbr
endif
set autoindent
set copyindent " copy the previous indentation on autoindenting
set scrolloff=5 " keep a certain ammount of context
match ErrorMsg '\s\+$' " show trailing spaces
set list " show hidden chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" force write
cmap w!! w !sudo tee % >/dev/null

"" FUNCTIONS

" https://vim.fandom.com/wiki/Remove_unwanted_spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

function RemoveCarriageReturn()
    %s/\r//
    ''
endfunction

"" unused settings
"set nu " enable numbers on the left size
":set nu rnu " turn hybrid line numbers on
"set whichwrap+=<,>,h,l " wrap when you move your cursor
"set texwidth=80 " hard word wrap
"set colorcolumn=80 " color past a certain number of chars
"highlight ColorColumn ctermbg=8 " set color of highlight to gray
" set ignorecase
"set showbreak=>>
