#!/bin/sh

f=/home/dyg/sh/ex3

che=1
l=$(echo $(ls) | tr " " "\n")
for i in l
do
	if [ $1 = $i ]; then
		che=0
		break
	fi
done

if [ $che = 1 ]; then
	$(mkdir $1)
fi

echo "type file name"
read fname
s=$(echo $fname | tr " " "\n")

for i in $s
do
	$(touch $i)
	$(mv $i $1)
done

eval "cd $1"
eval "tar -cvf $1.tar $fname"

eval "mkdir $1"
eval "mv $1.tar $1"

eval "cd $1"
eval "tar -xvf $1.tar"
