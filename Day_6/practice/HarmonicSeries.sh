#!/bin/bash 

	read -p "Harmonic series till N: " end

	hseries=0
	term=0
	for ((num=1;num<=end;num++))
	do
		term=`echo $num|awk '{print 1/$1 }'`
		hseries=`echo $term $hseries|awk '{print $1 + $2 }'`
	done
	echo Sum of $end terms in Harmonic Series = $hseries
