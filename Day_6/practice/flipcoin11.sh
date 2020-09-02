#!/bin/bash 

	heads=0
	tails=0
	while [[ $heads -lt 11 && $tails -lt 11 ]]
	do
		flip=$(($RANDOM%2))
		if [ $flip -eq 1 ]
		then
			heads=$(($heads+1))
		else
			tails=$(($tails+1))
		fi

	done

	if [ $heads -eq 11 ]
	then
		echo Heads comes first $heads times
	else
		echo Tails comes first $tails times
	fi
