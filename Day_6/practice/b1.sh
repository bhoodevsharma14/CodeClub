#!/bin/bash 


	read -p "Enter power of 2 : " power
	i=1
	while [[ $((2**$i)) -le $((2**$power)) && $((2**$i)) -le 256 ]]
	do
		echo 2^$i = $((2**$i))
		i=$(($i+1))
	done
