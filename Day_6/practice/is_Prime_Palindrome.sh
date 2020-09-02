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


function isprime
{
	num=$1
	divisibleby=0
   for (( i=1 ; i<=num ; i++ ))
   do
      if [ $(($num%$i)) -eq 0 ]
      then
         divisibleby=$(($divisibleby+1))
      fi

      if [ $divisibleby -gt 2 ]
      then
         echo Its not a prime number
			isPalindrome $num
         break
      fi

   done

   if [ $divisibleby -eq 1 ]
   then
      echo Non Prime
   elif [ $divisibleby -eq 2 ]
   then
      echo Its a Pime Number
		isPalindrome $num
   fi

}

read -p "Enter A Number " number
isprime $number
