#!/bin/bash -x

	read -p "Enter A Year : " year

	if [ $(($year%100)) -eq 0 -a $(($year%400)) -eq 0 ]
	then
		echo "It's a Leap Year"
	elif [ $(($year%4)) -eq 0 -a $(($year%100)) -nq 0  ]
	then
		echo "It's a Leap Year"
	else
		echo "It's Not a Leap Year"
	fi
