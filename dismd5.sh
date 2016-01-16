#!/bin/bash
echo "0" > x
mkdir dismd5
path=`ls $1`
IFS=$(echo -en "\n\b")
for f in $path;
do
  #random name
  rand=$(date +%s%N)
  name=$1"/dismd5/"${rand}".dmg"
  # echo $name
  cat $f x > $name
done
