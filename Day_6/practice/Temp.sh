#!/bin/bash 

	function in_degC
	{
		C=`echo $(($1-32)) |awk '{print $1*5/9 }'`
		echo $C Degree Celsius
	}


	function in_degF
	{
		D=`echo $1 |awk '{print $1*9/5 +32 }'`
		echo $D Degree Fahrenheit
	}

	read -p "To convert in 1. Degree Celsius 2. Degree Fahrenheit : " convert

	case $convert in

		1)	read -p "Enter Temperature in Fahrenheit : " temp
			if [ $temp -ge 32 -a $temp -le 212 ]
			then
				in_degC $temp
			else
				echo Invalid Temperature Input
			fi
		;;

		2)	read -p "Enter Temperature in Celsius : " temp
			if [ $temp -ge 0 -a $temp -le 100 ]
			then
			in_degF $temp
			else
				echo Invalid Temperature Input
			fi
      		;;

		*)
			echo Invalid Input
		;;

	esac
