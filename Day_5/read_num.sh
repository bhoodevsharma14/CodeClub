#!/bin/bash -x

   read -p "Enter number in 1,10,100,1000: " num
   if [ $num -eq 1 ]
   then
      echo ONE
   elif [ $num -eq 10 ]
   then
      echo TEN
   elif [ $num -eq 100 ]
   then
      echo HUNDRED
   elif [ $num -eq 1000 ]
   then
      echo THOUSAND
	else
		echo Not Readable
	fi


