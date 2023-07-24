# !/bin/bash

cd /home/dex/dev/ruby-file-system/db

path_to=./bkp/"$(date '+%Y-%m-%d %H:%M:%S')".json

cat > "$path_to"

cp ./db.json "$path_to"



# cp ./bkp/db-bkp.json ./db.json

# chmod 777 db.json