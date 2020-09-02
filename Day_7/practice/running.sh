#!/bin/bash -x
count=0
array[((count++))]=1
array[((count++))]=4
array[((count++))]=2
array[((count++))]=5
array[((count++))]=3
echo ${array[@]}

wcount=0

while True
do
	count=0
	min=0
	remove=0
	echo this is ${array[@]}
	echo ${!array[@]}
	for i in ${array[@]}
	do
		if [ $count -eq 0 -o $i -lt $min ]
		then
			min=$i
			remove=$count
		fi
		((count++))
	done
#	echo min=$min,remove=$remove,count=$count
	sortedarray[$wcount]=$min
	array=("${array[@]/$min}")
	((wcount++))
	if [ $wcount -eq 5 ]
	then
		break
	fi
done


echo ${sortedarray[@]}
