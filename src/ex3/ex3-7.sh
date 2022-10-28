#!/bin/sh

eval mkdir $1
eval cd $1
for i in $(seq 0 4)
do
	name=file$i
	eval touch $name.txt
	eval mkdir $name
	eval ln -s $name.txt $name
done
exit 0
