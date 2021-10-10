# setting up new mac

```
xcode-select --install
```

symlink files
```
ln -s ~/.dotfiles/[file] ~/[file]
```

install homebrew at https://brew.sh

```
brew bundle --file ~/.dotfiles/Brewfile

# and run this to update it

brew bundle dump --force --describe
```
