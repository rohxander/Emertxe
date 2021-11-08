#!/bin/bash

#Rohit Prakash
#27/10/2021
#Description : Write a script to sort a given number in ascending or descending order
<<comments
Sample Input :
	./A12.sh -a 5 4 6 2 3 8 9 7 1
Sample Output :
	Ascending order of array is 1 2 3 4 5 6 7 8 9
Sample Input :
	./A12.sh -d 5 4 6 2 3 8 9 7 1
Sample Output :
	Descending order of array is 9 8 6 5 4 3 2 1
Sample Input :
	./A12.sh 5 4 6 2 3 8 9 7 1
Sample Output :	
	Error : Please pass the choice.
	Usage : ./A12 -a/-d 4 23 5 6 3
Sample Input :
	./A12.sh
Sample Output :
	Error : Please pass the argument through command line.
	Usage : ./A12 -a/-d 4 23 5 6 3
comments

array=($@) 				#assign all CLA into array
n=$#						#array length
if [ $# -eq 0 ] 		#true if no CLA 
then
	echo "Error: Please pass arguments through command line"
	echo "Usage : ./A12 -a/-d 4 23 5 6 3"
elif [ $1 = -a ] #true if 1st CLA is -a
then
	for i in `seq $n` 	#iterating through all elements from 1
	do
		for j in `seq $i 1 $(($n-1))`			#iterating through ith element to n-1th element
		do
			if [ ${array[$i]} -gt ${array[$j]} ]	#true if current element is greater than next
			then
				#interchange elements
				temp=${array[$j]} 		#assign next element to temp
				array[$j]=${array[$i]}	#assign current element to next element
				array[$i]=$temp			#assign temp to current element
			fi
		done
	done
	echo "Ascending order of array is ${array[@]:1}" 	
elif [ $1 = -d ]       #true if 1st CLA is -d
then
   for i in `seq $n`		#iterating through all elements from 1
   do
      for j in `seq $i 1 $(($n-1))`	 #iterating through ith element to n-1th element
      do
	      if [ ${array[$i]} -lt ${array[$j]} ]	#true if current element is greater than next
	      then
	      	#interchange elements
	         temp=${array[$j]}			#assign next element to temp	
	         array[$j]=${array[$i]}	#assigning current element to next element
	         array[$i]=$temp			#assign temp to current element
	      fi
      done
   done
   echo -e "Descending order of array is ${array[@]:1}"
elif [ $1 != -a -a $1 != -d ] 	#true of 1st CLA is neither -a nor -d
   then
		echo "Error : Please pass the choice."
		echo "Usage : ./A12.sh -a/-d 4 23 5 6 3"
fi
