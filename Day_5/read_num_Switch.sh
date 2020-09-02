#!/bin/bash -x

   read -p "Enter number in 1,10,100,1000: " num
	case $num in

	   1) echo ONE
		;;
	   10) echo TEN
		;;
	   100)echo HUNDRED
		;;
	   1000)echo THOUSAND
		;;
		*) echo Not Readable
		;;

   esac
