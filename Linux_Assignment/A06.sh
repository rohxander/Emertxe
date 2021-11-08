#!/bin/bash

#Rohit Prakash
#23/10/2021
#Description : Write a script to print a given number in reverse order
#Sample Input :
	# $A06.sh/ 12345
#Sample Output :
	#Reversed Number - 54321
#Sample Input :
	# $A06.sh/ 1540
#Sample Output :
	#Reversed Number 451
#Sample Input :
	# $A06.sh/ 5
#Sample Output :
	#Error : Error: pass a multi-digit number
#Sample Input :
	# $A06.sh/ 
#Sample Output :
	#Error: No argument passed
#Sample Input :
	# $A06.sh/ 15f43
#Sample Output :
	#Error : Enter only numbers

	
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
			echo Reversed Number - $revNumber

		else
			echo Error : Enter only numbers
		fi
	else
		echo Error: Pass a multi-digit number
	fi
else
	echo Error: No argument passed
fi