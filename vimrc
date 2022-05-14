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
" http://vimcasts.org/
" https://learnvimscriptthehardway.stevelosh.com/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" TODO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move to NEOVIM
" look at fzf for fuzzy file find (https://github.com/junegunn/fzf)

" COC
" coc-pairs - tab out of pairs
" maybe shift enter to move to next line even though there was a match

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ENV
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make directories
if !isdirectory($HOME . '/.vim/undo')
    call mkdir($HOME . '/.vim/undo', 'p')
endif
if !isdirectory($HOME . '/.vim/swap')
    call mkdir($HOME . '/.vim/swap', 'p')
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" VIM PLUG
" https://github.com/junegunn/vim-plug/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" run pluginstall if there are missing plugins
augroup vim_plug_augroup
    autocmd!
    autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
    \| endif
augroup end
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/Yggdroot/indentLine',     { 'on':'IndentLinesToggle'}
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/junegunn/fzf',            { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/junegunn/gv.vim'
Plug 'https://github.com/junegunn/vim-easy-align', { 'on':'<Plug>(EasyAlign)'}
Plug 'https://github.com/junegunn/vim-peekaboo'
Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'https://github.com/mbbill/undotree',         { 'on':'UndotreeToggle'}
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/neoclide/coc.nvim',       { 'branch': 'release'}
Plug 'https://github.com/nixon/vim-vmath'
Plug 'https://github.com/preservim/nerdtree',      { 'on':'NERDTreeToggle'}
Plug 'https://github.com/rhysd/git-messenger.vim', { 'on':'<Plug>(git-messenger)'}
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/vim-scripts/argtextobj.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set autoread
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backupcopy=yes
set breakindent " indents word-wrapped lines as much as the parent line
set colorcolumn=80
set confirm
set copyindent " copy the previous indentation on autoindenting
set directory=~/.vim/swap//
set encoding=utf-8
set expandtab
set foldmethod=indent
set formatoptions=jrolq
set hidden " this lets you use buffers in the right way
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set linebreak
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set nofoldenable
set noshowmode
set nowrap
set path+=** " search down into subfolders
set rnu nu
set scrolloff=5
set shiftround
set shiftwidth=4
set shortmess+=c
set shortmess-=S
set showcmd
set showmatch
set sidescrolloff=10
set signcolumn=number
set smartcase
set smarttab
set softtabstop=4
set splitright
set swapfile
set tabstop=4
set textwidth=80
set title
set titlelen=70
set titlestring=%<%F%=%P "filename & percent down screen
set undodir=$HOME/.vim/undo//
set undofile
set undolevels=1000
set undoreload=10000
set updatetime=300
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu

let &showbreak = '↪ '
let &t_EI="\<Esc>[1 q" " end insert mode, blinking block
let &t_SI="\<Esc>[3 q" " start insert mode, blinking underline cursor
scriptencoding utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" LEADER MAPS
map <space> <leader>
let g:mapleader=' '
nnoremap <leader>ls :ls<cr>:b<space>
nnoremap <leader>sb :below botright 5new<cr>
nnoremap <leader>te :setlocal mouse=a<cr> :below botright term<cr>
" reselect pasted text
nmap <leader>gp `[v`]
nmap <leader>q :q<cr>
nmap <leader>ws <c-w>s
nmap <leader>wv <c-w>v
nmap <leader>w= <c-w>=
nmap <leader>w+ <c-w>+
nmap <leader>tn :tabnew<cr>
nmap <leader>bd :bdelete<cr>
nmap <leader>/ :nohlsearch<cr>
nmap <leader>qo :copen<cr>
nmap <leader>qc :cclose<cr>
"" OTHER MAPS
" easy window navigation
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
" indenting
vnoremap <s-tab> <gv
vnoremap <tab> >gv
vnoremap < <gv
vnoremap > >gv
" repeat dot macro over a range
xmap . :normal .<cr>
nnoremap Y y$
" inner line
xnoremap <silent> il <Esc>^vg_
onoremap <silent> il :<C-U>normal! ^vg_<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" HIGHLIGHTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme onedark
let g:onedark_terminal_italics=1
highlight Normal ctermbg=NONE
highlight Terminal ctermbg=NONE
let g:markdown_fenced_languages = [
            \ 'html',
            \ 'python',
            \ 'ruby',
            \ 'vim',
            \ 'bash',
            \ 'sh',
            \ 'css',
            \ ]
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
    autocmd filetype python :IndentLinesToggle
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://vim.fandom.com/wiki/Remove_unwanted_spaces
function! TrimWhiteSpace()
    echom 'trimming whitespace'
    silent %s/\s*$//
    ''
endfunction
command TrimWhiteSpace :call TrimWhiteSpace()
function! RemoveCarriageReturn()
    echom 'removing carriage returns'
    silent %s/\r*$//
    ''
endfunction
command RemoveCarriageReturn :call RemoveCarriageReturn()
function! CombineWhiteSpace()
    echom 'combining white space'
    silent v/./,/./-j
    ''
endfunction
command CombineWhiteSpace :call CombineWhiteSpace()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
" set up vim manual (:Man [func])
runtime ftplugin/man.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" GUI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32') || has('win64')
    set guifont=Consolas:h12
elseif has('gui_macvim')
    set guifont=JetBrainsMonoNerdFontComplete-Regular:h13
    set macligatures
else " linux
    set guifont=Monospace\ 12
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" EasyAlign
""""""""""""
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
""""""""""""
"" FZF
""""""""""""
map <expr> <c-p> fugitive#head() != '' ? ':GFiles --cached --others --exclude-standard<cr>' : ':Files<cr>'
nnoremap <expr> <c-b> len(getbufinfo({'buflisted':1})) > 1 ? ':Buffers<cr>' : ':History<cr>'
nnoremap <leader>f :Files<cr>
" <c-/> == <c-_> idk why
nnoremap <c-_> :Lines<cr>
""""""""""""
"" VIM-VMATH
""""""""""""
vmap <expr> ++ VMATH_YankAndAnalyse()
nmap ++ vip++
""""""""""""""""
"" VIM-GITGUTTER
""""""""""""""""
highlight! link SignColumn LineNr
set foldtext=gitgutter#fold#foldtext()
highlight GitGutterAdd cterm=bold ctermfg=green gui=bold guifg=green
highlight GitGutterChange cterm=bold ctermfg=214 gui=bold guifg=orange
highlight GitGutterDelete cterm=bold ctermfg=red gui=bold guifg=red
let g:gitgutter_sign_modified_removed = '±'
nmap <leader>gqf :GitGutterQuickFix \| copen<cr>
"""""""""""""""
"" VIM-STARTIFY
"""""""""""""""
" dont use 'qeibsvt'
let g:startify_bookmarks =
    \ [
    \     { 'x': '~/.vimrc' },
    \ ]
let g:startify_change_to_vcs_root = 0
let g:ascii = [
    \ ' __      __  ______',
    \ '/\ \  __/\ \/\  __  \',
    \ '\ \ \/\ \ \ \ \ \_\  \',
    \ ' \ \ \ \ \ \ \ \  _  /',
    \ '  \ \ \_/ \_\ \ \ \\  \',
    \ '   \ \____^___/\ \_\ \_\',
    \ '     \/__//__/  \/_/\/_/'
    \ ]
let g:startify_custom_header = 'startify#pad(g:ascii)'
let g:startify_custom_footer = 'startify#pad(startify#fortune#boxed())'
let g:startify_fortune_use_unicode = 1
let g:startify_lists = [
    \ { 'type': 'dir', 'header': ['   Most Recently Used in '.getcwd()]},
    \ { 'type': 'files', 'header': ['   Most Recently Used']},
    \ { 'type': 'sessions', 'header': ['   Sessions']},
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
    \ { 'type': 'commands', 'header': ['   Commands']},
    \ ]
let g:startify_session_persistence = 1
let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose' ]
highlight StartifyFile ctermfg=blue cterm=bold guifg=lightblue
highlight startifypath ctermfg=grey cterm=NONE guifg=darkgrey
highlight StartifyNumber ctermfg=lightgreen guifg=lightgreen
highlight StartifySection ctermfg=lightmagenta guifg=lightmagenta
highlight StartifyHeader ctermfg=lightmagenta guifg=lightmagenta
highlight StartifyFooter ctermfg=lightmagenta guifg=lightmagenta
map <leader>st :Startify<cr>
"""""""""""""""
"" VIM-PEEKABOO
"""""""""""""""
let g:peekaboo_delay=500
"""""""""""
"" UNDOTREE
"""""""""""
let g:undotree_WindowLayout = 2
let g:undotree_ShortIndicators = 1
nnoremap U :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle = 1
""""""""""""""""""
"" HIGHLIGHTEDYANK
""""""""""""""""""
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion cterm=reverse gui=reverse
"""""""""""""
"" INDENTLINE
"""""""""""""
augroup indent_line_augroup
    autocmd!
    autocmd! User indentLine doautocmd indentLine Syntax
augroup end
let g:indentLine_enabled = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bgcolor_term = 0
map <leader>ie :IndentLinesToggle<cr>
""""""""""""""""
"" GIT-MESSENGER
""""""""""""""""
nmap <leader>gm <Plug>(git-messenger)
"""""""""""
"" NERDTREE
"""""""""""
nnoremap <leader>n :NERDTreeToggle<CR>
augroup nerd_loader
    autocmd!
    autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END
"""""""""
"" GV.VIM
"""""""""
nmap <leader>gl :GV<cr>
"""""""""""
"" COC.NVIM
""""""""""""""""""
""" COC EXTENSIONS
""""""""""""""""""
let g:coc_global_extensions = [
            \ 'coc-clangd',
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-jedi',
            \ 'coc-sh',
            \ 'coc-snippets',
            \ 'coc-sql',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-vimlsp',
            \ 'coc-diagnostic',
            \ 'coc-css',
            \ 'coc-prettier',
            \ ]
"""""""""""""""
""" COC KEYMAPS
"""""""""""""""
" tab goes to next match or next snippet jump
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
let g:coc_snippet_next = '<tab>'
" if pmenu visible then go up else send <c-h> == backspace
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" TODO -- not working -- close pmenu on escape
" inoremap <expr><Esc> pumvisible() ? "\<C-e>" : "\<esc>"
" <c-space> will start completion
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
            \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap     [g         <Plug>(coc-diagnostic-prev)
nmap     ]g         <Plug>(coc-diagnostic-next)
nmap     gd         <Plug>(coc-definition)
nmap     <leader>gt <Plug>(coc-type-definition)
nmap     <leader>gi <Plug>(coc-implementation)
nmap     <leader>gr <Plug>(coc-references)
nnoremap K          :call <SID>show_documentation()<CR>
nmap     <leader>re <Plug>(coc-rename)
xmap     <leader>cf <Plug>(coc-format-selected)
nmap     <leader>cf <Plug>(coc-format-selected)
nmap     <leader>cF <Plug>(coc-format)
xmap     <leader>ca <Plug>(coc-codeaction-selected)
nmap     <leader>ca <Plug>(coc-codeaction-selected)
nmap     <leader>ct <Plug>(coc-codeaction)
nmap     <leader>cq <Plug>(coc-fix-current)
" code lens is only neovim because of virtual text
" nmap     <leader>cl <Plug>(coc-codelens-action)
nnoremap <leader>cd :<C-u>CocList diagnostics<cr>
nnoremap <leader>ce :<C-u>CocList extensions<cr>
nnoremap <leader>cm :<C-u>CocList commands<cr>
nnoremap <leader>co :<C-u>CocList outline<cr>
nnoremap <leader>cs :<C-u>CocList -I symbols<cr>
xmap     if         <Plug>(coc-funcobj-i)
omap     if         <Plug>(coc-funcobj-i)
xmap     af         <Plug>(coc-funcobj-a)
omap     af         <Plug>(coc-funcobj-a)
xmap     ic         <Plug>(coc-classobj-i)
omap     ic         <Plug>(coc-classobj-i)
xmap     ac         <Plug>(coc-classobj-a)
omap     ac         <Plug>(coc-classobj-a)
" <s-down> and <s-up> scroll float windows/popups
nnoremap <silent><nowait><expr> <s-down> coc#float#has_scroll() ? coc#float#scroll(1) : "\<s-down>"
nnoremap <silent><nowait><expr> <s-up> coc#float#has_scroll() ? coc#float#scroll(0) : "\<s-up>"
inoremap <silent><nowait><expr> <s-down> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <s-up> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <s-down> coc#float#has_scroll() ? coc#float#scroll(1) : "\<s-down>"
vnoremap <silent><nowait><expr> <s-up> coc#float#has_scroll() ? coc#float#scroll(0) : "\<s-up>"
""""""""""""""""""""""""
""" COC HELPER FUNCTIONS
""""""""""""""""""""""""
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . ' ' . expand('<cword>')
    endif
endfunction
""""""""""""""""""
""" COC AUTOGROUPS
""""""""""""""""""
augroup coc_augroup
    autocmd!
    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
""""""""""""""
"" Commentary
""""""""""""""
augroup tpope_commentary
    autocmd!
    autocmd FileType c setlocal commentstring=//\ %s
augroup END
""""""""""""
"" LIGHTLINE
""""""""""""
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
        \ 'left': [
            \ [ 'mode', 'paste' ],
            \ [ 'bufnum' ],
            \ [ 'readonly', 'filename', 'modified' ],
        \ ],
        \ 'right': [
            \ [ 'lineinfo' ],
            \ [ 'percent' ],
            \ [ 'fileformat', 'fileencoding', 'filetype' ],
        \ ],
    \ },
\ 'inactive': {
        \ 'left': [
            \ [ 'filename', 'modified' ],
        \ ],
        \ 'right': [
            \ [ 'lineinfo' ],
            \ [ 'percent' ],
        \ ],
    \ }
\ }
