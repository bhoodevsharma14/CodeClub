#!/bin/bash 

	read -p "Enter a number : " guess
	magicnumber=$((RANDOM%100+1))
	while [[ $magicnumber -ne $guess ]]
	do
		if [ $magicnumber -lt $guess ]
		then
			read -p "Magic Number is less,try again " guess
		else
			read -p "Magic Number is greater, try again " guess
		fi
	done

	echo Yes Magic Number is $guess
