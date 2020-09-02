#!/bin/bash -x

	#	1 for heads
	#  0 for tails
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		echo Heads
	else
		echo Tails
	fi
