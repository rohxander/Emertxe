#!/bin/bash

#Rohit Prakash
#24/10/2021
#Description : Write a script to print the length of each and every string using arrays

<<comment
Sample Input :
	./A10.sh hello hai how are you ?
Sample Outpit :
	Length of string (hello) – 5
	Length of string (hai) – 3
	Length of string (how) – 3
	Length of string (are) – 3
	Length of string (you) – 3
	Length of string (?) - 1
Sample Input :
	./A10_string_length.sh
Sample Output :
	Error : Please pass the arguments through command-line.
comment

array=($@)								#input all CLA into array

if [ $# -ne 0 ] 						#true if CLA present
then
	for i in `seq 0 1 $(($#-1))` 		
	do
		echo 'Length of string ('${array[$i]}') - '${#array[$i]}
	done
else
	echo Error : Please pass the arguments through command-line.
fi