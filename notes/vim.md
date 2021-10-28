# Vim

```
   k
 h   l
   j

h	left
l	right
k	up
j	down

(	Jump backward one sentence.
)	Jump forward one sentence.
{	Jump backward one paragraph.
}	Jump forward one paragraph.

H	Jump to the top of the screen.
M	Jump to the middle of the screen.
L	Jump to the bottom of the screen.

x		remove char
X		backspace
d		delete
D		d$
di[div]		delete inbetween [div]
w		word
W		real word
e		end
E		real end

commands for find and till
f	find
F	find backwards
t	till
T	till backwards
;	repeat forwards
,	repeat backwards

cursor movement
0		begining of line
^		first non whitespace char
$		end of line
gg		begining of file
G		end of file
[line]G		jump to [line] line number
''		jump back to the line where cursor was before
``		undo last jump
'.		jump to last changed line (will just go to last edit)
g;		jump to place of last edit (will keep going back in edits)
%		jump to other bracket

u		undo
g-		undo but contains more states
^-r		(NORMAL) redo
^-r[reg]	(INSERT) paste from buffer
g+		redo but contains more states
v		visual
^-v		visual block
gv		reselect

J			join current line and below line
q:			open command history
q[letter] [keycombo] q	record command 
^-g			show the filename

:		command
:w		save
:q		quit
:wq		save n quit
:q!		quit no save
:qall		quit all files
:x		save n quit
:w[file name]	save a new file
:set nu		show line numbers
:set nonu	don't show line numbers
:noh		turn off the highlight from search
:E		back to file browser

zz	center view
zb	put cursor at bottom of screen
zt	put cursor at top of screen

>>	indent
<<	unindent

INSERT MODE

^-t	indents
^-d	unindents

i	insert
I	insert at begining of line
o	insert new line	below
O	insert new line above
A	insert at end of line
a	insert after current char 
C	delete line and insert

p	paste buffer after cursor
P	paste buffer before cursor

WINDOWS
^-w w		switch windows
^-w [number]	switch to [number] tab
^-w [hjkl<^v>]	switch to tab pointed to
^-w t		go to top window
^-w =		make all windows equal
^-w [num] +	increase window height
^-w [num] -	decrease window height
^-w [num] < 	decrease current window width N columns
^-w [num] >	increase current window width N columns
^-w H	  	move current window to the left
^-w J	  	move current window to the bottom
^-w K	  	move current window to the top
^-w L	  	move current window to the right
^-w P		go to previous window
^-w c		close window
^-w q 		quit current window
^-w o		close all but current window
^-w r		rotate windows downward
^-w s 		split window horizontally
^-w v		split window vertically 

TABS
gt		next tab
gT		previous tab
g<tab>		go to last opened tab
:tabe		new tab
:tab [command]	run command and open it in new tab
:tabnew		"
:tabn		next tab
:tabp		previous tab
:tabfir		go to first tab
:tabl		got to last tab
:tabs		list all tabs
:tabm [num]	move tab to number
:tabm +[num]
:tabm -[num]
```

## PEP
```
set tabstop=4 shiftwidth=4 expandtab
set expandtab|retab
```

# NOT FORMATTED

```
"" COMMANDS
" :ls
" :b [FILESUBSTRING]
" :find
" :edit [file]
" :earlier and :later
" :reg to see buffers and "np to paste from buffer n
" :s/old/new/g and :s/old/new/gc (for a prompt)
" :%s/old/new/g for the whole file
" :![command]
" :r !ls
" :r [File] reads file into this file
" :w [File] write file into this file
" :w !pbcopy " pipe current buffer into a command
" :vimgrep pattern %
" :vimgrep pattern % | copen

"" KEY COMBOS
"" CONTROL
" ^g show file name
" ^n auto complete ^E to select
" ^a to increment numbers
" ^d for command completion
" c to delete word then enter insert mode
" cc to delete whole line
" R to replace text
```
