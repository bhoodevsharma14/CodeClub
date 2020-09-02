#!/bin/bash 

	read -p "Enter Starting Number " start
	read -p "Enter Ending Number " end


	for (( num=$start ; num<=$end ; num++ ))
	do
			divisibleby=0

			for (( i=1 ; i<=$num ; i++ ))
			do
				if [ $(($num%$i)) -eq 0 ]
				then
					divisibleby=$(($divisibleby+1))
				fi

				if [ $divisibleby -gt 2 ]
				then
					continue
				fi
			done


		if [ $divisibleby -eq 2 ]
		then
			echo -n $num,
		fi

	done
