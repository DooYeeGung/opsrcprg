#!/bin/sh
f(){
	echo "enter the fuction"
	echo $($1)
}
echo "start the program"
f $1
echo "exit the program"
exit 0
