#!/bin/bash -x

   read -p "Enter number 1 to 7: " day

	case $day in

		1) echo Sunday
		;;
      2) echo Monday
		;;
      3) echo Tuesday
		;;
      4) echo Wednesday
		;;
      5) echo Thrusday
		;;
      6) echo Friday
		;;
      7) echo Saturday
		;;
		*) echo Enter a valid Day
		;;

   esac

