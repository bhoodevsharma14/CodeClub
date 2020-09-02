#!/bin/bash 

	read -p "Enter a Number " num
	echo -n Prime Factors are :
	for (( i=2 ; i<=$num ;))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			num=$(($num/$i))
			echo -n $i,
			continue
		fi
		i=$(($i+1))
	done
