#!/bin/bash
FILES=$(cat "$@")
for i in $FILES 
do
echo "Prcoessing image $i ..."
convert $i $i.png
rm -rfv $i
done
