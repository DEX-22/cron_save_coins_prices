# !/bin/bash
here = "$(pwd)"

cd "${here}"/db

file="$(date '+%Y-%m-%d %H:%M:%S')"

path_to=./bkp/"$file".json 

mv ./db.json "$path_to"

echo "{}" > ./db.json

 