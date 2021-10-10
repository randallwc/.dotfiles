Vim

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

x	remove char
X	backspace
d	delete
D	d$
diX	delete inbetween X where X is a character
w	word
W	real word
e	end
E	real end

commands for find and till
f	find
F	find backwards
t	till
T	till backwards
;	repeat forwards
,	repeat backwards

0	begining of line
^	first non whitespace char
$	end of line
gg	begining of file
G	end of file
NG	jump to 'N' line number
''	jump back to the line where cursor was before
``	undo last jump
'.	jump to last changed line (will just go to last edit)
g;	jump to place of last edit (will keep going back in edits)
%	jump to other bracket

u	undo
C-r	redo
v	visual
C-v	visual block
gv	reselect

:		command
:w		save
:q		quit
:wq		save n quit
:q!		quit no save
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

C-T	indents
C-D	unindents

i	insert
I	insert at begining of line
o	insert new line	below
O	insert new line above
A	insert at end of line
a	insert after current char 
C	delete line and insert

p	paste buffer after cursor
P	paste buffer before cursor

PEP

:set tabstop=4 shiftwidth=4 expandtab

:set number
:set nonumber
:set noh
