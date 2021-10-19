#!/bin/bash

#Rohit Prakash
#16/10/2021
#Description : Write a script for addition of two numbers for real numbers also
#Sample Input :
	#Enter the numbers to do addition
	#Number 1 : 10.32
	#Number 2 : 20.45
#Sample Output :
	#The answer is 30.77
string=$@
case ${string:${#string}-1 :1} in
	+)
		for i in `seq 0 1 $((${#string} - 2 ))`
		do
			((sum= $sum + ${string: $i : 1 }))
		done
		echo $sum
		;;
	-)
		sub=${string:0:1}
		for i in `seq 1 1 $((${#string} - 2 ))`
		do
			((sub= $sub - ${string: $i : 1 }))
		done
		echo $sub 
		;;
	x)
		mul=1
		for i in `seq 0 1 $((${#string} - 2 ))`
		do
			((mul= $mul * ${string: $i : 1 } )) 
		done
		echo $mul
		;;
	/)
		div=${string:0:1}
		for i in `seq 1 1 $((${#string} - 2 ))`
		do
			div=`echo "scale=2 ; $div / ${string: $i : 1 }" | bc`  
		done
		echo $div
		;;
	*)
		echo Error: Operator missing or invalid operator, please pass
		;;
esac
