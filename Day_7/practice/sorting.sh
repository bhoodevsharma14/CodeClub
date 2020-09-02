#!/bin/bash 
function max2min2()
{
	newstr=("$@")
	((max2at=${#newstr[@]}-2))
	echo 2nd Maximum is ${newstr[$max2at]}
	echo 2nd Minimum is ${newstr[1]}
}

function sorting()
{
	newArray=("$@")
	while True
	do
		min=0
		for index in ${!newArray[@]}
		do
			if [ $min -eq 0 -o ${newArray[$index]} -lt $min ]
			then
				min=${newArray[$index]}
				remove=$index
			fi
		done
		SortedArray+=($min)
		unset newArray[$remove]
		length=${#newArray[@]}
		if [ $length -eq 0 ]
		then
			break
		fi
	done
	echo Sorted Array is ${SortedArray[@]}
	max2min2 ${SortedArray[@]}
}

for ((i=1;i<=10;i++))
do
	randomArray[$i]=$((RANDOM%900+100))
done
echo Randome Array is ${randomArray[@]}
sorting ${randomArray[@]}
