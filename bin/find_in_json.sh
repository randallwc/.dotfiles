#!/usr/bin/env bash

SUBSTR="$1"
FILE="$2"

if [[ -z "$SUBSTR" || -z "$FILE" ]]; f
echo "Usage: $(basename "$0") <substring> <file.json>"
echo "  Returns the jq-style paths to string values matching a substring."
exit 1
fi

if [[ ! -f "$FILE" ]]; then
echo "Error: File '$FILE' not found."
exit 1
fi

jq --arg substr "$SUBSTR" '
paths as $p
| select(
(getpath($p) | type) == "string"
and (getpath($p) | test($substr))
)
| $p
' "$FILE"
