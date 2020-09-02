#!/bin/bash

read -p "Enter Maximum Limit : " limit

for ((i=0;i<=$limit;i++))
do
	if [ $i -lt 10 ]
	then
		continue
	else
		number=$i
		unset digits
		while (($number))
		do
			digit=$(($number%10))
			digits+=($digit)
			number=$(($number/10))
		done
		digits=(${digits[@]/$digit})
		are_same=${#digits[@]}
		if [ $are_same -gt 0 ]
		then
			continue
		else
			echo $i
		fi
	fi


done
