```
 __      __  ______
/\ \  __/\ \/\  __  \
\ \ \/\ \ \ \ \ \_\  \
 \ \ \ \ \ \ \ \  _  /
  \ \ \_/ \_\ \ \ \\  \
   \ \____^___/\ \_\ \_\
     \/__//__/  \/_/\/_/
```

# new mac setup

## install xcode
`xcode-select --install`

## install rosetta

`softwareupdate --install-rosetta --agree-to-license`

## github

create git ssh key

<https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>

## homebrew

<https://brew.sh>

## visual studio

`defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`

## spotify

show advanced settings > no opening on login

## messenger

go to settings > disable launch on startup

## steam

settings > user & groups > remove steam from startup

## 3 finger drag

System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag

## keyboard repeat

Keyboard > Keyboard > Key Repeat

`fast`

Keyboard > Keyboard > Delay Until Repeat

`short`

## finder

Finder > Preferences > [do stuff here]

Finder > View > Show Path Bar

Finder > View > Show Status Bar

## enable document sync on icloud

System Preferences > Apple ID > iCloud Drive > Options > Desktop & Documents Folders

## misc settings

1. enable icloud on messages
1. enable control zoom
1. enable tts
1. play feedback when volume is changed

## do not disturb keyboard toggle

1. System Preferences > Keyboard > Shortcuts > Mission Control
1. Turn Do Not Disturb On/Off ⌃⌥⌘D

## hidden apps in dock

```bash
defaults write com.apple.Dock showhidden -boolean yes; killall Dock
```

## touch id sudo

turn on touch id support for sudo

## messages

1. go to iphone messages settings
1. turn on imessage forwarding

## chrome

1. System Preferences > Keyboard > Shortcuts > App Shortcuts > Google Chrome.app
1. `Enter Full Screen` ^⌘F
1. `Exit Full Screen` ^⌘F
