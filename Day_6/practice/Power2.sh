#!/bin/bash 

	read -p "Enter Power(n) : " n

	for (( power=1; power<= n;power++))
	do
		echo 2^$power = $((2**$power))
	done
