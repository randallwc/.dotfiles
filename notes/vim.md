# Vim

```
   k
 h   l
   j

h                       left
l                       right
k                       up
j                       down

(                       Jump backward one sentence.
)                       Jump forward one sentence.
{                       Jump backward one paragraph.
}                       Jump forward one paragraph.

H                       Jump to the top of the screen.
M                       Jump to the middle of the screen.
L                       Jump to the bottom of the screen.

x                       remove char
X                       backspace
d                       delete
D                       d$
di[div]                 delete inbetween [div]
w                       word
W                       real word
e                       end
E                       real end

commands for find and till
f                       find
F                       find backwards
t                       till
T                       till backwards
;                       repeat forwards
,                       repeat backwards

cursor movement
0                       begining of line
^                       first non whitespace char
$                       end of line
gg                      begining of file
G                       end of file
[num]G                  jump to [num] line number
:[num]                  "
:+[num]                 jump down [num] lines
:-[num]                 jump up [num] lines
''                      jump back to the line where cursor was before
``                      undo last jump
'.                      jump to last changed line (will just go to last edit)
g;                      jump to place of last edit (will keep going back in edits)
%                       jump to other bracket
*                       search for word under cursor
#                       search for word under cursor backwards

u                       undo
g-                      undo but contains more states
^r                      (NORMAL) redo
^r[reg]                 (INSERT) paste from buffer
g+                      redo but contains more states
v                       visual
^v                      visual block
gv                      reselect

J                       join current line and below line
q:                      open command history
q[letter] [keycombo]    q record command
^g                      show the filename

gf                      open file under cursor

:                       command
:w                      save
:q                      quit
:wq                     save n quit
:q!                     quit no save
:qall                   quit all files
:x                      save n quit
:w[file name]           save a new file
:set nu                 show line numbers
:set nonu               don't show line numbers
:noh                    turn off the highlight from search
:E                      back to file browser

zz                      center view
zb                      put cursor at bottom of screen
zt                      put cursor at top of screen

>>                      indent in command mode
<<                      unindent in command mode
==                      indent to what is above

INSERT MODE

^t                      indents in insert mode
^d                      unindents in insert mode

i                       insert
I                       insert at begining of line
o                       insert new line below
O                       insert new line above
A                       insert at end of line
a                       insert after current char
C                       delete line and insert

p                       paste buffer after cursor
P                       paste buffer before cursor
"np                     paste from buffer n

VISUAL MODE
gu                      make lowercase
guu                     make linelowercase
gU                      make uppercase
gUU                     make line uppercase
:sort                   sort selected lines
:sort u                 sort selected lines and delete repeats
!!sh                    runs the current line in shell

WINDOWS
^w w                    switch windows
^w [number]             switch to [number] tab
^w [hjkl<^v>]           switch to tab pointed to
^w t                    go to top window
^w =                    make all windows equal
^w [num] +              increase window height
^w [num] -              decrease window height
[num]^w _               set current window height to N
^w [num] <              decrease current window width N columns
^w [num] >              increase current window width N columns
[num]^w |               set current window width to N
^w H                    move current window to the left
^w J                    move current window to the bottom
^w K                    move current window to the top
^w L                    move current window to the right
^w P                    go to previous window
^w c                    close window
^w q                    quit current window
^w o                    close all but current window
^w r                    rotate windows downward
^w s                    split window horizontally
^w v                    split window vertically

TABS
gt                      next tab
gT                      previous tab
g<tab>                  go to last opened tab
:tabe                   new tab
:tabnew                 "
:tab [command]          run command and open it in new tab
:tabn                   next tab
:tabp                   previous tab
:tabfir                 go to first tab
:tabl                   got to last tab
:tabs                   list all tabs
:tabm [num]             move tab to number
:tabm +[num]
:tabm -[num]

:messages               show current message
K                       show help for what is under cursor

JUMPS
^i                      Go to newer cursor position in jump list
^o                      Go to Older cursor position in jump list

COMMANDS
:ls                     list all buffers
:b [FILESUBSTRING]      open buffer
:find                   finds file in path
:edit [file]            edit file in buffer
:earlier and :later     kinda like undo redo??
:reg                    see registers
:s/old/new/g            search and replace on line
:s/old/new/gc           search and replace on line and confirm each
:%s/old/new/g           search and replace in entire file
:%s/old/new/gc          search and replace in entire file and confirm each
:g/pat/d                delete pattern in whole file
:![command]             run terminal command
:r !ls                  read terminal command into buffer
:r [File]               reads file into this file
:w !pbcopy              pipe current buffer into a command
:vimgrep pattern %      search for pattern in current file and put int quickfix list
:copen                  open quickfix list
:cclose                 close quickfix list
:w !diff % -            get the diff of current with saved

CONTROL COMMANDS
^a                      to increment numbers (visual/normal)
^d                      for command completion
^g                      show file name
^x                      to decrement a number in a line

AUTO COMPLETION
^a                      to insert last inserted text (insert)
SIMPLE WORD COMPLETION
^n                      auto complete (^E to not select anything)
^p                      auto complete previous
TAG COMPLETION (ctags)
^x^]                    using ctags you can complete in relation to them
FILENAME COMPLETION
^c^f                    complete paths relative to the current working directory
CONTEXT-AWARE WORD COMPLETION
^x^p                    it will complete repeated sentences backward
^x^n                    it will complete repeated sentences forward
CONTEXT-AWARE LINE COMPLETION (Vim's filetype plugins enabled)
^x^o                    omnicomplete - complete language keywords and built in classes or functions

G COMMANDS
g??                     do rot13
g^a                     increment numbers in visual mode and increase each line by line
gi                      go into insert mode right where you were last in insert mode
gv                      highlight last highlighted thing
1v                      highlight last highlighted thing?

SPELLING
z=                      get spelling suggestions
zg                      add word under cursor as a good word
]s                      go to next missspelled word
[s                      go to previous missspelled word

CODE FOLDING
zo                      open fold
zc                      close fold
zO                      open all folds
zC                      close all folds

REPLACE COMMANDS
R                       to replace text
c                       to delete word then enter insert mode
cc                      to delete whole line and go into insert mode
```

## PEP
```
set tabstop=4 shiftwidth=4 expandtab
set expandtab | retab
set tabstop=4 shiftwidth=4 expandtab|retab
```
