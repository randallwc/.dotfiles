#! /usr/bin/env bash

set -euo pipefail

#echo "path= $PATH"

hash HandBrakeCLI || exit 1
hash lsdvd || exit 1
hash fzf || exit 1

#volume=$(find /Volumes -mindepth 1 -maxdepth 1 -type d -print | fzf)
volume=/Volumes/2005_08_20_05H42M_PM
lsdvdoutput=$(lsdvd "$volume" 2>&1)
titles="$(echo "$lsdvdoutput" | sed -E 's/Title: ([0-9]+),.*/\1/g')"

echo "$titles"

for vol in $titles; do
    echo "$vol"
done
