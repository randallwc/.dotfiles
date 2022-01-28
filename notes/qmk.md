```sh
# keyboard.c to json
qmk c2json -kb nullbitsco/nibble -km willDefault willDefault/keymap.c | python3 -m json.tool | cat -l json
# json to keyboard.c
qmk json2c file.json
```
