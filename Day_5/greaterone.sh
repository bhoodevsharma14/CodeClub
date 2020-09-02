#!/bin/bash -x

	read -p "Enter 1st number " num1
	read -p "Enter 2nd number " num2

	if [ $num1 -gt $num2 ]
	then
		echo $num1 is Greater
	else
		echo $num2 is Greater
	fi
