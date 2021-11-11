#!/bin/bash

#Rohit Prakash
#2/10/2021
#Description : For each directory in the $PATH, display the number of executable files in that directory
<<comments
Sample Input : 
	./A31.sh
Sample Output :
	Current dir: /usr/local/sbin
	current count: 0
	Current dir: /usr/local/bin
	current count: 0
	Current dir: /usr/sbin
	current count: 205
	Current dir: /usr/bin
	current count: 1889
	Current dir: /sbin
	current count: 187
	Current dir: /bin
	current count: 159
	Current dir: /usr/games
	current count: 5
	Current dir: /usr/local/games
	current count: 0
	Total – 2445
comments


array=(`echo $PATH | tr ':' '\n'`) 	#extracting path directories into array
total=0								#total count set to 0
for i in ${array[@]} 				#iterate through elements in array
do
	count=0							#count set to 0 for every directories
	cd $i                           #cd to current element
	file=(`ls $i`)					#get list of all files in current dir
	for j in ${file[@]} 			#iterating through all files
	do
		if [ -x $j ]   				#true if file has executable permission
		then
			count=$((count + 1))	#count increment
		fi
	done
	total=$((total + count))		#total count increment
	
	echo "current directory: $i"
	echo -e "current count: $count\n"
done
echo "total: $total"

