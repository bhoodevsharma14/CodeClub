#!/bin/bash 

	read -p "Enter a Number " num

	for (( i=2 ; i<=$num ;))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			num=$(($num/$i))
			echo $i
			continue
		fi
		i=$(($i+1))
	done
