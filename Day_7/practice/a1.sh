#!/bin/bash 

	for ((i=1 ; i<= 10 ; i++))
	do
		randomArray[i]=$((RANDOM%900+100))
	done

	max=0
	max2=0
	min=0
	min2=0

	for ((i=1 ; i<=10 ; i++))
	do
		val=${randomArray[$i]}
		if [ $i -eq 1 ]
		then
			max=$val
			max2=$val
			min=$val
			min2=$val
		fi

		if [ $val -gt $max ]
		then
			max2=$max
			max=$val
		elif [ $val -gt $max2 ]
		then
			max2=$val
		elif [ $val -lt $min ]
		then
			min2=$min
			min=$val
		elif [ $val -lt $min2 ]
		then
			min2=$val
		fi

	done

	echo the 10 number are ${randomArray[@]}
	#echo here maximum is $max
	echo here maximum 2th is $max2
	#echo here min is $min
	echo here min2 is $min2
