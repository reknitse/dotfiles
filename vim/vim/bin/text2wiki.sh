#!/bin/bash
DATE=$(date +%F)
TIME=$(date +%H:%M:%S)
FILE="gwiki/diary/$DATE.mkd"

if [[ $1 == $FILE ]]
then
    echo "[$TIME]"
    while read line; do
        echo "$line"
    done
else
    echo "[$TIME]($HOME/$1)" >> $FILE
    while read line; do
        echo "$line" >> $FILE
        [[ $2 -eq 1 ]] && echo "$line"
    done
fi

