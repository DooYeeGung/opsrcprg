#!/bin/sh
w=`expr $1 \* 10000`
bmi=`expr $w / \( $2 \* $2 \)`
min=18.5
min_f=${min%.*}
if [ $bmi -gt 23 ]; then
	echo "overweight"
elif [ $bmi -gt $min_f ]; then 
	echo "normalweight"
else 
	echo "underweight"
fi
exit 0
