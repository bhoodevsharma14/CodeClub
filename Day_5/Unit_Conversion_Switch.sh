#!/bin/bash -x

echo Avoid Decimal place in inches 
read -p "Enter 1st number : " num1
read -p "Convert into 	1.ft to inc 	2.inc to feet	 3.ft to M	 4.M to ft : " convert

case $convert in

	1)	inc=`echo $num1 |awk '{print $1*12 }'`
		echo $num1 Feet is equal to $inc inches
	;;

	2) feet=`echo $num1 |awk '{print $1/12 }'`
		echo $num1 inches is equal tp $feet feet
	;;

	3)	meter=`echo $num1 |awk '{print $1*0.3048 }'`
		echo $num1 feet is equal to $meter meter	
	;;

	4) feet=`echo $num1 |awk '{print  $1*3.28084 }'`
		echo $num1 meter is equal to $feet foot
	;;

	*)	echo Invlid Input
	;;

esac
