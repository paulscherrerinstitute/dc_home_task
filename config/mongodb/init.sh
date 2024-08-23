#!/bin/sh

cd /seed

for FILE_NAME in $(ls *.json)
do
    mongoimport --db dacat-next --collection ${FILE_NAME%.*} --file $FILE_NAME --jsonArray
done
