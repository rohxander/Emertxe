#!/bin/bash

#Rohit Prakash
#24/10/2021
#Description : Write a script to read 'n' and generate Fibonacci numbers
<<comment
Sample Input :
	./A09_fibonacci.sh
	Enter limit for fib series: 10
	0, 1, 1, 2, 3, 5, 8
Sample Input :
	./A09.sh
	Enter limit for fib series: 33
	0, 1, 1, 2, 3, 5, 8, 13, 21, 33
Sample Input :
	./A09.sh
	Enter limit for fib series: -10
	Error : Please enter only positive numbers.
Sample Input :
	/A09.sh
	Enter limit for fib series: 87y8
	Error : Please enter only numbers.
comment

read -p "Enter limit for fib series : " num
regex1='^[-+]?[0-9]+$'				#regex for only numbers
regex2='^[+]?[0-9]*[.]?[0-9]+$'		#regex for all positive numbers including zero
regex3='^[+]?[0]*[.]?[0]+$'			#regex to exclude zero

if [[ $num =~ $regex1 ]]			#true if regex matches
then
	if [[ $num =~ $regex2 && ! $num =~ $regex3 ]] #(True if matches regex2) && (True if NOT matches regex 3)
	then
		fib=0
		next=1

		while [ $fib -le $num ]
		do
			echo -n "$fib"
			if [ $fib -lt $num ]
			then
				echo -n ", "
			
			fi
			sum=$(( $fib + $next ))
			fib=$next
			next=$sum
		done
		echo "" 
	else 
		echo Error : Please enter only positive numbers.
	fi
else
	echo Error : Please enter only numbers.
fi