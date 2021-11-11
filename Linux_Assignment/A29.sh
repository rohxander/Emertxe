#!/bin/bash

#Rohit Prakash
#2/10/2021
#Description : Display the names of any file-system which have less than 10% free space available
<<comments
Sample Input : 
	/A29_free_space.sh
Sample Output :
Filesystem /dev/sda5 have less than 10% free space

comments


fileName=(`df | cut -d ' ' -f1`)							#extracting filenames
use=(`df | tr -s '  ' | cut -d ' ' -f5 | cut -d "%" -f1`)	#extracting use percentage

for i in `seq 0 1 $((${#fileName[@]} - 1 ))`    			 #to check for all elements in free
do
	free=$(( 100 - ${use[$i]} ))   		 					 #free percentage = 100 - use percentage
	if [ $free -lt 10 ] 				     				 #true if file has less than 10% free space
	then
		echo "${fileName[$i]} has less than 10% of free space"
	fi
done
