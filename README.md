# setting up new mac
# install xcode
`xcode-select --install`

# [install rosetta](https://apple.stackexchange.com/questions/408375/zsh-bad-cpu-type-in-executable)
> for M1 chips
`softwareupdate --install-rosetta`

# symlink files
`./setup.sh`

# set up github links

[create git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

`./setup.sh --github`

# [install homebrew](https://brew.sh)
# link the settings file
```sh
# this is to link the file
brew bundle --file=~/.dotfiles/Brewfile 
# and run this to update it
brew bundle dump --force --describe --file=~/.dotfiles/Brewfile
```

# download apps from appstore
- Scan Thing
- Daisy Disk
- Amphetamine
- Horo
- Good Notes

# enable 3 finger drag
`System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag`

# iTerm2 Settings
```sh
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm2"
defaults write com.googlecode.iterm2 NoSyncNeverRemindPrefsChangesLostForFile -bool true
```

# [install logi options](https://www.logitech.com/en-us/product/options)

# set up key board repeat
`Keyboard > Keyboard > Key Repeat`

**set fast**

`Keyboard > Keyboard > Delay Until Repeat`

**set short**

# update finder settings
`Finder > Preferences > [do stuff here]`

# [install miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [jupyter lab](https://jupyter.org/install)
- ipython


# enable document sync on icloud
`System Preferences > Apple ID > iCloud Drive > Options > Desktop & Documents Folders`

# disable icloud optimization
`System Preferences > Apple ID > iCloud and disable Optimize Mac Storage`

# misc settings
1. enable icloud on messages
1. enable control zoom
1. enable tts
1. put bluetooth in menu bar
1. put sound in menu bar
1. play feedback when volume is changed

# set up gitlocal
```git
# ~/.gitlocal on mac
[credential]
	helper = osxkeychain
```

# TODO
## minor

- [ ] fix search in vim to fuzzy search

- [ ] look into greyed out tab completion in zsh

- [ ] look into vi mode for zsh ( add visual indicator for insert and command mode )

## major
- [ ] clean up documentation
