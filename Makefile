DOTFILES_DIR := $(HOME)/Developer/dotfiles
.PHONY: help link unlink clean

## help: show this help message
help:
	@echo 'Usage:'
	# this parses this file and looks for the comments above each target
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## link: symlink all dotfiles to the home directory
link:
	@echo 'linking everything to the home directory...'
	ln -s $(DOTFILES_DIR)/gitconfig ~/.gitconfig
	ln -s $(DOTFILES_DIR)/gitignore_global ~/.gitignore_global
	ln -s $(DOTFILES_DIR)/nvim ~/.config/nvim
	ln -s $(DOTFILES_DIR)/tmux.conf ~/.tmux.conf
	ln -s $(DOTFILES_DIR)/wezterm.lua ~/.wezterm.lua
	ln -s $(DOTFILES_DIR)/zprofile ~/.zprofile
	ln -s $(DOTFILES_DIR)/zshrc ~/.zshrc
	@echo 'done linking!'

## unlink: remove symlinks from the home directory
unlink:
	@echo 'deleting all links...'
	rm -f ~/.config/nvim
	rm -f ~/.gitconfig
	rm -f ~/.gitignore_global
	rm -f ~/.tmux.conf
	rm -f ~/.wezterm.lua
	rm -f ~/.zprofile
	rm -f ~/.zshrc
	@echo 'done deleting all links.'

## clean: placeholder for cleaning up temporary files
clean:
	@echo 'nothing to clean.'
