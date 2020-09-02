#!/bin/bash -x

	balance=100
#	betamount=$((RANDOM%100+1))
#	gamble=$((RANDOM%2))

	while [[ $balance -gt 0 && $balance -lt 200 ]]
	do
		betamount=$((RANDOM%$balance+1))
		gamble=$((RANDOM%2))
		if [ $gamble -eq 1 ]
		then
				balance=$(($balance+$betamount))
		else
				balance=$(($balance-$betamount))
		fi

	done


	if [ $balance -ge 200 ]
	then
		echo Player WON
	else
		echo Player LOOSE
	fi

