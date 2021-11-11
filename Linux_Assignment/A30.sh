#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Count the number of users with user IDs between given range.
<<comments
Sample Input : 
	./A30.sh
Sample Output :
	Total count of user ID between 500 to 10000 is: 2
Sample Input : 
	./A30.sh 0 100
Sample Output : 
	Total count of user ID between 0 to 100 is : 3
Sample Input : 
	./A30.sh 100
Sample Output : 
	Error : Please pass 2 arguments through CL.
	Usage : ./A30.sh 100 200
Sample Input :
	./30.sh 200 100
Sample Output :	
	Error : Invalid range. Please enter the valid range through CL.
comments

count=0 						

array=(`cat /etc/passwd | cut -d : -f3 `)

if [ $# -eq 0 ]
then
	for i in `seq 0 1 $((${#array[@]}-1))`				#iterate through each element 
	do
		if [ ${array[$i]} -ge 500 -a ${array[$i]} -le 10000 ]     #if true count increment
		then
			count=$((count + 1))
		fi
	done
	echo "total count of user ID in between 500 and 10000 is : $count"

elif [ $# -eq 2 ]											#true if CLA are 2
then
	if [ $2 -ge $1 ]										#true if 2nd argument is greater than or equal to 1st argument
	then
		for i in `seq 0 1 $((${#array[@]}-1))`				#iterate through each element 
		do
			if [ ${array[$i]} -ge $1 -a ${array[$i]} -le $2 ] 		#if true count increment
			then
				count=$((count + 1))
			fi
		done
		echo "total count of user ID in between $1 and $2 is : $count"
	else 
		echo Error : Invalid range. Please enter valid range through CL.
	fi
else
	echo	Error : Please pass 2 arguments through CL.
	echo 	Usage : ./A30.sh 100 200
fi
