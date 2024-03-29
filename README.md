# setting up new mac
# install xcode
`xcode-select --install`

# install rosetta
[here](https://apple.stackexchange.com/questions/408375/zsh-bad-cpu-type-in-executable)
for M1 chips

`softwareupdate --install-rosetta`

# github

[create git ssh
key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

# [install homebrew](https://brew.sh)

# auto install
`./install`

## visual studio
 - run `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool
   false` for key repeat

## spotify
1. show advanced settings
1. say no to opening on login

## messenger
 - go to settings > disable launch on startup

## zoom
 - settings > share screen > window size ... > maintain current size

## steam
 - settings > user & groups > remove steam from startup

# download apps from appstore
- Scan Thing
- Daisy Disk
- Amphetamine
- Horo
- Good Notes

# enable 3 finger drag

`System Preferences > Accessibility > Pointer Control > Mouse & Trackpad >
Trackpad Options > Enable Dragging > Three Finger Drag`

# iTerm2 Settings
```sh
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.dotfiles/iterm2"
defaults write com.googlecode.iterm2 NoSyncNeverRemindPrefsChangesLostForFile -bool true
```

## install jetbrains mono manually (or just use homebrew)
[font](https://www.jetbrains.com/lp/mono/)

- open `Font Book` and press `+`
- select the whole folder and add it

> RECOMMENDED SETTINGS FOR THE FONT
>
> Size: 13
> Line spacing: 1.2

# [install logi options](https://www.logitech.com/en-us/product/options)

## set up the guesture button
![logi options image](images/logiOptions.png)

# monitor control
![monitor control general settings](images/monitorcontrol_general.png)
![monitor control app menu settings](images/monitorcontrol_appmenu.png)
![monitor control keyboard settings](images/monitorcontrol_keyboard.png)

# set up key board repeat
`Keyboard > Keyboard > Key Repeat`

**set fast**

`Keyboard > Keyboard > Delay Until Repeat`

**set short**

# update finder settings
`Finder > Preferences > [do stuff here]`

`Finder > View > Show Path Bar`

`Finder > View > Show Status Bar`

## optional

# enable document sync on icloud

`System Preferences > Apple ID > iCloud Drive > Options > Desktop & Documents
Folders`

# disable icloud optimization
`System Preferences > Apple ID > iCloud and disable Optimize Mac Storage`

# misc settings
1. enable icloud on messages
1. enable control zoom
1. enable tts
1. put bluetooth in menu bar
1. put sound in menu bar
1. play feedback when volume is changed

# Quicklook
- use Brew to install the quicklook plugins into `~/Library/QuickLook`

## ql color code on m1 fix
[here](https://github.com/jpc/QLColorCode/releases/tag/release-4.1.2%2Bm1)

## ql stephen fix
```bash
xattr -Cr ~/Library/QuickLook/QLStephen.qlgenerator
qlmanage -r
qlmanage -r cache
killall Finder
```

## [ipynb quicklook](https://github.com/tuxu/ipynb-quicklook/releases)
1. unzip
1. move to `/Library/QuickLook`

```bash
qlmanage -r
killall Finder
```

# firewall

[This one is a bit controversial. If you do not install software which allows
network access of any kind, skip it. If you run potentially vulnerable software
you don't want to be accessed from other machines, consider turning the built-in
firewall on. This particularly applies if you develop network
software.](https://sourabhbajaj.com/mac-setup/Security/)

1. Choose Apple menu () > System Preferences, then click Security & Privacy.
1. Click the Firewall tab.
1. Click the Lock button, then enter an administrator name and password.
1. Click Turn On Firewall.
1. Click Firewall Options.
1. Uncheck `Automatically allow signed software to receive incoming
   connections`.

The last step disables automatic access for software from the App Store. From
now on you can either add (dis)allowed programs to the list within the Firewall
Options or just click on Allow\/Deny, if you get a popup asking you if a
specific software may be accessed.

# chrome

1. System Preferences > Keyboard > Shortcuts > App Shortcuts > Google Chrome.app
1. `Enter Full Screen` ^⌘F
1. `Exit Full Screen` ^⌘F

# do not disturb
1. System Preferences > Keyboard > Shortcuts > Mission Control
1. Turn Do Not Disturb On/Off ⌃⌥⌘D

# hidden apps

```bash
defaults write com.apple.Dock showhidden -boolean yes; killall Dock
```

# raycast

import the `./raycast.rayconfig` into raycast

# touch id sudo

```
sudo vim /etc/pam.d/sudo
```

add this line

```
auth sufficient pam_tid.so
```
