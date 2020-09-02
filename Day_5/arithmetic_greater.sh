#!/bin/bash

      read -p "Enter number a: " a
		read -p "Enter number b: " b
		read -p "Enter number c: " c

		op1=$(($a+$b*$c))
		op2=$(($c+$a/$b))
		op3=$(($a%$b+$c))
		op4=$(($a*$b+$c))
      max=0
      if [ $op1 -gt $op2 -a $op1 -gt $op3 -a $op1 -gt $op4 ]
      then
         max=$op1
      elif [ $op2 -gt $op3 -a $op2 -gt $op4 -a $op2 -gt $op5 ]
      then
         max=$op2
      elif [ $op3 -gt $op4 -a $op3 -gt $op5 ]
      then
         max=$op3
      else
        	max=$op4
		fi
		echo max between $op1,$op2,$op3,$op4 is $max
