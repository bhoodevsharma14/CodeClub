#!/bin/bash -x

	read -p "Enter a Number " num
	divisibleby=0
	for (( i=1 ; i<=num ; i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			divisibleby=$(($divisibleby+1))
		fi

		if [ $divisibleby -gt 2 ]
		then
			echo Its not a prime number
			break
		fi

	done

	if [ $divisibleby -eq 1 ]
	then
		echo Non Prime
	elif [ $divisibleby -eq 2 ]
	then
		echo Its a Pime Number
	fi
