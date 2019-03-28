#!/bin/bash
FILES=$(cat "$@")
for i in $FILES 
do
echo "Prcoessing image $i ..."
convert -thumbnail 520 $i $i.thumb 
convert $i -gravity center -crop 520x520+0+0 $i.thumb
rm $i
done
