#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Write a script to search whether the user is present or not in your system
<<comments
Sample Input : 
	./A30.sh xyz
Sample Output :
	xyz not present
Sample Input :	
	./A32.sh root
Sample Output :
	root is present
Sample Input :	
	./A32.sh
Sample Output :
	Error : Please pass the argument through command line.
comments

if [ $# -eq 0 ] #true if CLA does not exist
then
	echo "Error : Pass arguments in command line"
else
	array=(`cat /etc/passwd | cut -d ":" -f1`)   #get username from /etc/passwd
	
	for i in `seq 0 1 $((${#array[@]}-1))`		#iterate through every username
	do
		if [ $1 = ${array[$i]} ] 				#true if username and CLA is same
		then 
			echo "$1 is present"			
			exit								#exit program if match found
		fi
	done
	echo "$1 is not present"
fi
