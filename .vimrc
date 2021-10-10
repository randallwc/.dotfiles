set nocompatible

" enable syntax highlighting
syntax enable

"enable numbers on the left size
"set nu

" turn hybrid line numbers on
":set nu rnu

" set up statusline
set ruler " show percent down page
set showcmd " show command which is being typed

" search settings
set incsearch " incremental searching
set smartcase " search is case insensitive unless one is capital
set hlsearch " enable hightlighting when searching
" set ignorecase

" set up vim manual
runtime ftplugin/man.vim

" lets vim know the filetype
filetype plugin on

" Search down into subfolders
set path+=**

" Display all matching files when we tab complete
set wildmenu

" enable softwrap of words
set wrap
set linebreak

" set line wrap symbol
"set showbreak=>>
let &showbreak = '⤥  '

" wrap when you move your cursor
"set whichwrap+=<,>,h,l
" set hard word wrap
"set texwidth=80

" color past a certain number of chars
"set colorcolumn=80
" set color of highlight to gray 
"highlight ColorColumn ctermbg=8

" change cursor based on mode
if &term =~ "xterm\\|rxvt"
	let &t_SI="\<Esc>[3 q" " start insert mode, blinking underline cursor
	let &t_EI="\<Esc>[1 q" " end insert mode, blinking block
	" 1 or 0 -> blinking block
	" 3 -> blinking underscore
	" Recent versions of xterm (282 or above) also support
	" 5 -> blinking vertical bar
	" 6 -> solid vertical bar
endif

"" COMMANDS
" :ls
" :b [FILESUBSTRING]
" :qall
" :find
" :edit [file]
" :earlier and :later
" :reg to see buffers and "np to paste from buffer n
" :s/old/new/g and :s/old/new/gc (for a prompt)
" :%s/old/new/g for the whole file
" :![command]
" :r !ls
" :r [File] reads file into this file
" :vimgrep pattern %
" :vimgrep pattern % | copen

"" KEY COMBOS
"" CONTROL
" ^g show file name
" ^n auto complete ^E to select
" ^a to increment numbers
" ^d for command completion
"" 
" c to delete word then enter insert mode
" cc to delete whole line
" R to replace text
