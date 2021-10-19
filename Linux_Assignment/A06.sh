#!/bin/bash

#Rohit Prakash
#16/10/2021
#Description : Write a script to print a given number in reverse order
#Sample Input :
	# $A06.sh/ 1234
#Sample Output :
	#4321
#Sample Input :
	# $A06.sh/ 12340000
#Sample Output :
	#4321
#Sample Input :
	# $A06.sh/ 1
#Sample Output :
	#Error : Error: pass a multi-digit number
#Sample Input :
	# $A06.sh/ 
#Sample Output :
	#Error: No argument passed
#Sample Input :
	# $A06.sh/ 1e1e1e
#Sample Output :
	#Error : Please enter only positive integers

num=$@
if [ ${#num} -ne 0 ]
then
	if [ ${#num} -gt 1 ]
	then
		if [[ $num =~ ^[0-9]+$ ]]
		then
			n=${#num}
			while [ $(($num % 10)) -eq 0 ]
			do
				((num=$num/10))
			done
			n=${#num}
			for i in `seq $n`
			do
				((lastDigit=$num%10))
				((revNumber= $revNumber + $lastDigit*$((10**$(($n - $i))))))
				((num=$num-$lastDigit))
				((num=$num/10))
			done
			echo $revNumber

		else
			echo Error : Please enter only positive integers
		fi
	else
		echo Error: pass a multi-digit number
	fi
else
	echo Error: No argument passed
fi