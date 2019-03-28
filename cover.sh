#!/bin/bash
FILES=$(cat "$@")
for i in $FILES 
do
echo "Prcoessing image $i ..."
convert -thumbnail 1000 $i $i
convert $i -gravity center -crop 1000x500+0+0 $i.cover
rm $i
done
