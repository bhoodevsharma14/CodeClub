#!/bin/bash 
magic=0
function isMagic
{	num=$1
	if [ $(($num%9)) -eq 1 ]
	then
		magic=1
	else
		magic=0
	fi

	return 0
}


echo "Think a number between 1 to 100 "
min=1
max=100
mid=50
run=1
while (($run))
do
	mid=$((($min+$max)/2))
	echo "Is your Number is " $mid
	echo "1. Yes Its my Number "
	echo "2. My Number is less than "$mid
	echo "3. My Number is greater than "$mid
	read -p "Your Response " choice
	case $choice in
	1) echo "We got Your Number is "$mid
		run=`isMagic $mid`
		echo $run
	;;

	2) max=$mid
	;;

	3)	min=$mid
	;;

	esac

done


if [ $magic -eq 1 ]
then
	echo "Its a Magic Number "
else
	echo "Its Not a Magic Number "
fi

