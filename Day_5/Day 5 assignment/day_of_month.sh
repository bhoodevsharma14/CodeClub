#!/bin/bash -x

	read -p "Enter day : " day
	read -p "Enter Month : " M

	if [ $M -eq 3 -a $day -gt 20 -a $day -lt 32 ]
	then
		echo True
	elif [ $M -eq 4 -a $day -lt 32 ]
	then
      echo True
	elif [ $M -eq 5 -a $day -lt 32 ]
	then
		echo True
	elif [ $M -eq 6 -a $day -lt 20 ]
	then
		echo True
	else
		echo False
	fi


