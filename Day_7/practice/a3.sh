#!/bin/bash 

	read -p "Enter a Number " num
	echo -n "Prime factors of $num are : "
	count=0
	for (( i=2 ; i<=$num ;))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			num=$(($num/$i))
			Factors[((count++))]=$i
			continue
		fi
		i=$(($i+1))
	done


	echo -n ${Factors[@]}
