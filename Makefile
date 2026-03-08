DOTFILES_DIR := $(CURDIR)
.PHONY: help link unlink clean

## help: show this help message
help:
	@echo 'usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## link: symlink all dotfiles to the home directory
link:
	@echo 'linking general dotfiles...'
	ln -sf $(DOTFILES_DIR)/gitconfig $(HOME)/.gitconfig
	ln -sf $(DOTFILES_DIR)/gitignore_global $(HOME)/.gitignore_global
	ln -sf $(DOTFILES_DIR)/tmux.conf $(HOME)/.tmux.conf
	ln -sf $(DOTFILES_DIR)/wezterm.lua $(HOME)/.wezterm.lua
	ln -sf $(DOTFILES_DIR)/zprofile $(HOME)/.zprofile
	ln -sf $(DOTFILES_DIR)/zshrc $(HOME)/.zshrc
	# ~/.config configs
	mkdir -p $(HOME)/.config
	ln -sfn $(DOTFILES_DIR)/nvim $(HOME)/.config/nvim
	@echo 'done linking!'

## unlink: remove all symlinks
unlink:
	@echo 'deleting all links...'
	rm -f $(HOME)/.gitconfig
	rm -f $(HOME)/.gitconfig
	rm -f $(HOME)/.gitignore_global
	rm -f $(HOME)/.tmux.conf
	rm -f $(HOME)/.wezterm.lua
	rm -f $(HOME)/.zprofile
	rm -f $(HOME)/.zshrc
	rm -rf $(HOME)/.config/nvim
	@echo 'done deleting all links.'

## clean: placeholder for cleaning up temporary files
clean:
	@echo 'nothing to clean.'
