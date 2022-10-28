#!/bin/sh

echo "do you enjoy Linux? (Yes/No)"
read answer
case $answer in 
	yes | Yes | y | Y | YES)
		echo "well played";;
	[n/N]*)
		echo "its too bad";;
	*)
		echo "you must type yes or no"
		exit 1;;
esac
exit 0
