#!/bin/bash
<<comments
Rohit Prakash
24/10/2021
Description : Write a script to perform arithmetic operation on digits of a given number

Sample Input :
	./A08.sh 1234+
Sample Output : 
		Sum is 10
Sample Input :
./A08.sh 8312-
Sample Output : 
		Sub is 2
Sample Input :
./A08.sh 5487
Sample Output : 
		Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)
Sample Input :
./A08.sh 1111x
		Mul is 1
Sample Input :
./A08.sh
Sample Output : 
		Error : Please pass the argument.
comments

string=$@
if [ $# -ne 0 ]												#check if CLA empty or not
then
	case ${string:${#string}-1 :1} in 						#taking last character of input string as case varaible
		+)
			for i in `seq 0 1 $((${#string} - 2 ))`			#running loops from 0th index of string to 2nd last index
			do
				((sum= $sum + ${string: $i : 1 }))
			done
			echo $sum
			;;
		-)
			sub=${string:0:1}								#initialise sub with value of 1st digit to begin subtraction
			for i in `seq 1 1 $((${#string} - 2 ))`			#loop from 1st index to 2nd last
			do
				((sub= $sub - ${string: $i : 1 }))
			done
			echo $sub 
			;;
		x)
			mul=1											#initialising mul with 1
			for i in `seq 0 1 $((${#string} - 2 ))`			#loop from 0th index to 2nd last
			do
				((mul= $mul * ${string: $i : 1 } )) 
			done
			echo $mul
			;;
		/)
			div=${string:0:1}								#initialising div with 1st value
			for i in `seq 1 1 $((${#string} - 2 ))`			#loop from 1st index to 2nd last
			do
				div=`echo "scale=2 ; $div / ${string: $i : 1 }" | bc`  
			done
			echo $div
			;;
		*)
			echo Error: Operator missing or invalid operator, please pass operator as last digit '(+,-,x,/)'
			;;
	esac
else
	echo Error: Please pass argument.
fi