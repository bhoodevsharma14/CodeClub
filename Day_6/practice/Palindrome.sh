#!/bin/bash 

	function isPalindrome
	{

		num=$1
		old=$num
		new=0
		while (($num))
		do
			i=$(($num%10))
			num=$(($num/10))
		   new=$(($new*10+$i))
		done

		if [ $new -eq $old ]
		then
			echo $old is a Palindrome
		else
			echo $old is Not a Palindrome
		fi

	}


	read -p "ENTER A NUMBER " number1
	read -p "Enter A Number " number2
	isPalindrome $number1
	isPalindrome $number2
