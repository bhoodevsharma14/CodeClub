#!/bin/bash 

	balance=100
	win=0
	loose=0
	total=0

	while [[ $balance -gt 0 && $balance -lt 200 ]]
	do
		#betamount=$((RANDOM%$balance+1))	#if try to BET RANDOMLY
		betamount=1
		gamble=$((RANDOM%2))
		if [ $gamble -eq 1 ]
		then
				balance=$(($balance+$betamount))
				win=$(($win+1))
		else
				balance=$(($balance-$betamount))
				loose=$(($loose+1))
		fi
		total=$(($total+1))
	done


	if [ $balance -ge 200 ]
	then
		echo Player WON
	else
		echo Player LOOSE
	fi
	echo Player Win $win times
	echo Player Loose $loose times
	echo Player Total $total times

