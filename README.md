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

```bash
# System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag (NOTE: The GUI doesn't update)
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
```

```bash
# iTerm2 Settings
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm2"
# defaults write com.googlecode.iterm2 NoSyncNeverRemindPrefsChangesLostForFile -bool true
```

install `logi options`

Keyboard > Keyboard > Key Repeat
set `Fast`

Keyboard > Keyboard > Delay Until Repeat
Short

install conda somehow???
