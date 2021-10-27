# setting up new mac

# install xcode
```
xcode-select --install
```

# symlink files
`./setup.sh`

# set up github links
`./setup.sh --github`

# [install homebrewi](https://brew.sh)
# Link the settings file
```sh
brew bundle --file ~/.dotfiles/Brewfile # this is to link the file
brew bundle dump --force --describe # and run this to update it
```

# Download Apps From Appstore
- Scan Thing
- Daisy Disk
- Amphetamine
- Horo
- Good Notes

# Enable 3 finger drag
`System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag`

# iTerm2 Settings
```sh
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm2"
```

# [install logi options](https://www.logitech.com/en-us/product/options)

# set up key board repeat
`Keyboard > Keyboard > Key Repeat`
**set Fast**
`Keyboard > Keyboard > Delay Until Repeat`
**Short**

# update finder settings
`Finder > Preferences > [do stuff here]`

# [install miniconda](https://docs.conda.io/en/latest/miniconda.html)

# [create git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

# Enable Document Sync on iCloud
`System Preferences > Apple ID > iCloud Drive > Options > Desktop & Documents Folders`

# Disable iCloud Optimization
`System Preferences > Apple ID > iCloud and disable Optimize Mac Storage`

# TODO

- [ ] clean up documentation

- [ ] write down all settings that need to be updated
