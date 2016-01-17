#!/bin/bash
start=$(date "+%s")
IFS=$(echo -en "\n\b")
path=$1
# path=${path// /\\s}
# echo $path
files=`ls $1`

echo "0" > x
mkdir $path"/dismd5"

for f in $files;
do {
  #random name
  rand=$(head -200 /dev/urandom | cksum | cut -f1 -d" ")
  name=$path"/dismd5/"${rand}".dmg"
  # f=${f// /\\ }
  f=$path"/"$f
  echo $f
  # echo $name
  cat $f ./x > $name
}
done

now=$(date "+%s")
echo "Time elapsed: $((now-start)) secs"
