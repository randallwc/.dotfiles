DOTFILES_DIR := $(Users/william/Developer/dotfiles)
.PHONY: help link unlink nvim clean

## help: show this help message
help:
	@echo 'usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## link: symlink all dotfiles to the home directory
link: nvim
	@echo 'linking general dotfiles...'
	ln -sf $(DOTFILES_DIR)/gitconfig ~/.gitconfig
	ln -sf $(DOTFILES_DIR)/gitignore_global ~/.gitignore_global
	ln -sf $(DOTFILES_DIR)/tmux.conf ~/.tmux.conf
	ln -sf $(DOTFILES_DIR)/wezterm.lua ~/.wezterm.lua
	ln -sf $(DOTFILES_DIR)/zprofile ~/.zprofile
	ln -sf $(DOTFILES_DIR)/zshrc ~/.zshrc
	mkdir -p ~/.config
	ln -sf $(DOTFILES_DIR)/nvim ~/.config/nvim
	@echo 'done linking!'

## unlink: remove all symlinks
unlink:
	@echo 'deleting all links...'
	rm -rf ~/.config/nvim
	rm -f ~/.gitconfig ~/.gitignore_global ~/.tmux.conf ~/.wezterm.lua ~/.zprofile ~/.zshrc
	@echo 'done deleting all links.'

## clean: placeholder for cleaning up temporary files
clean:
	@echo 'nothing to clean.'
