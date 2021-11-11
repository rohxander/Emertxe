#!/bin/bash

#Rohit Prakash
#9/10/2021
#Description : Use pipes or redirection to create an infinite feedback loop.
<<comments
Sample Input : 
	./A25.sh Hello How Are You ?
Sample Output :
	Hello
	How
	Are
	you
	?
Sample Input : 
	./A25.sh
Sample Output :
	Error : Pass the arguments through command line.
comments

if [ $# -eq 0 ]      #True if no CLA exists
then 
	echo Error : Pass the arguments through command line.
else
	i=0	                            #initalising counter
	print_function(){				#defining function
		sentence=($@)
		if [ $i -lt  $# ]			#True if couter is less than argument length
		then
			echo ${sentence[$i]}	
			i=$(($i+1))				#increment counter
			print_function "${sentence[@]}"			#calling function for recursion and passing senetence array as argument
		else
			return
		fi
	}
	print_function $@             #calling the print function and passing CLA as argument
fi