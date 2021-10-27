# setting up new mac
# install xcode
`xcode-select --install`

# symlink files
`./setup.sh`

# set up github links

[create git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

`./setup.sh --github`

# [install homebrew](https://brew.sh)
# link the settings file
```sh
# this is to link the file
brew bundle --file ~/.dotfiles/Brewfile 
# and run this to update it
brew bundle dump --force --describe
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


# enable document sync on icloud
`System Preferences > Apple ID > iCloud Drive > Options > Desktop & Documents Folders`

# disable icloud optimization
`System Preferences > Apple ID > iCloud and disable Optimize Mac Storage`

# enable icloud on messages
# enable control zoom
# enable tts

# TODO

- [ ] clean up documentation

- [ ] write down all settings that need to be updated
