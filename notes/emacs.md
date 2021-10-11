# Emacs

```
C-x C-c		save and quit
C-x C-z		put emacs in the background
C-x C-f		open file
C-x 2		horizontal windows
C-x 3		vertical window
C-x 0		close windows except on you are in
C-x o		switch active window

esc esc esc	quit command

'mode line'
      '**'	buffer modified
      '--'	buffer not modified
      '%%'	buffer read only
      (~~)	major mode e.x. 'Text'

C-x u 		undo
C-_ 		undo

C-h C-h		help
C-h t		tutorial
C-h a [command]	find help page for command

C-x k		kill buffer

C-u [number] [command]		repeat said sommand
    could be neg
    C-g	     			abort number

C-u 		universal-argument

C-q [ascii #]	add char from ascii #


MOVEMENT

  char

	C-f	forward a char
	C-b	backwards a char

  word

	M-f	forwards a word
	M-b	backwards a word

  vertical line

	C-n	next line
	C-p	last line

  horizontal line

	C-a	begingin of line
	C-e	end of line

  sentence

	M-e	forwards sentence
	M-a	backwards sentence

  paragraph

	M-}	forwards paragraph
	M-{	backwards paragraph

  page

	C-x ]	forwards page
	C-x [	backwards page

  buffer

	M-< 	begingin of buffer
	M->	end of buffer

files

C-x C-f		find file
C-x C-s		save buffer
C-x s		save buffers

buffers

C-x b		switch to buffer
C-x C-b		list buffers
C-x k		kill buffer
C-x C-q		make buffer read only

Windows

C-v	scroll up
M-v	scroll down
C-x o	switch windows
C-x 1	delete other window
C-x 0	delete window
C-x 2	split window verticaly
C-x 3	split window horizontally
C-M-v	scroll-other-window

S-expressions(balanced paren)

C-M-b     backward-sexp
C-M-f	  forward-sexp
C-M-u	  backward-up-list
C-M-d	  down-list

functions

C-M-a	  begining of defun
C-M-e	  end of defun

delete

C-d	delete char
M-DEL	backward kill word

C-k		 kill line kills to end of the current line
C-u 0 C-k    	 kill line kills to the begining of the line

sentence

M-k		kill sentence
C-u -1 M-k	kill sentence to begining

Yank
C-y    		bring back killed things(yank)

mark

M-@		mark word
M-h		mark paragraph
C-M-@		mark sexp
C-M-h		mark defun
C-x C-p		mark page
C-x h		mark whole buffer

C-x C-x		exchange point and mark
C-w 		kill region(cut)
M-w		kill ring save(copy)
C-x C-i		indent
C-x C-l		down case region
C-x C-u		upper case region
M-x fill-region	fill region ?
```
