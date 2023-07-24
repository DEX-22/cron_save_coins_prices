# !/bin/bash

cd /home/dex/dev/ruby-file-system/db

mv ./db.json ./bkp/"$(date '+%Y-%m-%d %H:%M:%S')".json

# cat > db.json

cp ./bkp/db-bkp.json ./db.json

chmod 777 db.json