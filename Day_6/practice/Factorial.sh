#!/bin/bash 

	read -p "Enter Number : " num
	term=0
	factorial=1
	for (( i=$num ; i>=1 ; i-- ))
	do
		if [ $term -eq 0 ]
		then
			echo -n "Factorial $num!=$i"
			term=1
		else
			echo -n "*$i"
		fi
		factorial=$(($factorial*i))
	done

	echo -n " = $factorial"
