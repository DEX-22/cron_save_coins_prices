# !/bin/bash

cd /home/dex/dev/ruby-file-system/db

file="$(date '+%Y-%m-%d %H:%M:%S')"

path_to=./bkp/"$file".json

# echo "$path_to"

mv ./db.json "$path_to"

echo "{}" > ./db.json

 