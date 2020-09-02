#!/bin/bash

declare -A dice
dice=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0 )
condition=True
while $condition
do
	number=$((RANDOM%6+1))
	count=${dice[$number]}
	((count++))
	dice[$number]=$count
	for i in ${dice[@]}
	do
		if [ $i -eq 10 ]
		then
			condition=False
		break
		fi
	done

done
maxIndex=0
min=0
minIndex=0
for i in ${!dice[@]}
do
	echo "$i : ${dice[$i]}"
	if [ ${dice[$i]} -eq 10 ]
	then
		maxIndex=$i
	elif [ $min -eq 0 -o ${dice[$i]} -lt $min ]
	then
		min=${dice[$i]}
		minIndex=$i
	fi

done
echo "Maximum Occurrence is $maxIndex : ${dice[$maxIndex]}"
echo "Minimum Occurrence is $minIndex : ${dice[$minIndex]}"
