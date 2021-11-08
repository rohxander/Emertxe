#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Write a script to delete all the .swp lists found in your system or directory
<<comments
Sample Input : 
	./A19.sh
Sample Output : 
		swp file found :
		/home/user/ConventionalMethod/.pic16F887.as.swp
		/home/user/Development/BeagleBone-Xm/VideoApp/.cmds.swp
		/home/user/Development/LDD/.expt_drv.c.swp
		/home/user/Development/LDD/.ddk_block.c.swp
Sample Input :
	./A19.sh Test/
Sample Output :
	Error : Test no such a file or directorie
Sample Input :
	./A19.sh test_swp
Sample Output : 
	No swp files found in test_swp.

comments
fileType=swp
if [ $# -eq 0 ]  #true if CLA equals 0
then
	list=(`find ~ -name "*.$fileType"`) #find all files by name that matches fileType in ~
	
    if [ ${#list[@]} -ne 0 ]  #true if list not empty
    then
    	for i in `seq 0 1 $((${#list[@]}-1))`		#printing the list
    	do
    		echo "${list[$i]}"
    	done
    	list=`find ~ -name "*.$fileType" -delete`	#deleting the files
	else
		echo "swp files not found"
	fi
else
	if [ -d $1 ]  							#true if CLA is directory
	then
		list=(`find $1 -name "*.$fileType"`)	#find all files by name that matches fileType in CLA 
		if [ ${#list[@]} -ne 0 ]
		then
			for i in `seq 0 1 $((${#list[@]}-1))` #printing the list
    		do
    		echo "${list[$i]}"					
    		done
			list=`find $1 -name "*.$fileType" -delete`		#deleting the files
		else
			echo "no swp lists in $1"
		fi
	else
		echo "no such directory"
	fi
fi
