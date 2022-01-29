#! /usr/bin/env sh
files="willDefault willSnail"

for file in $files
do
    # ln -s [actual file] [link location]
    if ln -s ~/.dotfiles/qmk/$file ~/GitHub/qmk_firmware/keyboards/nullbitsco/nibble/keymaps/$file
    then
        echo "DEBUG: successfully linked $file"
    else
        echo "FAIL: did not link $file"
    fi
done
unset files
