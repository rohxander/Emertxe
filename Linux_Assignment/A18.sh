#!/bin/bash

#Rohit Prakash
#31/10/2021
#Description : Write script to print contents of file from given line number to next given number
<<comments
Sample Input : 
	$ ./A18.sh
Sample Output : 
	The longest usernames are   : dongre-persistenced nvidia-persistenced gnome-initial-setup
	The Shortest usernnames are : rp lp

comments

array=(`cat /etc/passwd | cut -d ":" -f 1`)

# **************** larger list code ************************

larger=${array[0]}										#initialising with first element of array
length=${#array[0]}										#initialising with length of first element of array				
largeCount=0											
for i in `seq 0 1 $((${#array[@]} - 1))`				#from 0 to 1 less length of array
do
	if [[ ${#array[$i]} -ge $length ]]					
	then
		length=${#array[$i]}
		larger[$largeCount]=${array[$i]}				#adding larger elements into larger array
		largeCount=$(($largeCount+1))					#incrementing count for addition into array
	fi
done

# **************** largest list code ************************

longestLength=${#larger[-1]}							#last element of larger array is the longest
largeCount=0											#re-initilising largeCount for next array
for i in `seq $((${#larger[@]} - 1)) -1 0`				#from last item to 0th item
do
	if [ ${#larger[$i]} -eq $longestLength ]			#checking for multiple items with longest length
	then 
		largest[$largeCount]=${larger[$i]}
		largeCount=$(($largeCount+1))
	else
		break											#since the list is sorted one breaking the loop once smaller length is found
	fi
done
echo 'The longest usernames are   :' ${largest[@]}

# **************** smaller list code ************************
														#similar explanation for smaller and smallest list code
smaller=${array[0]}
smallCount=0
length=${#array[0]}
for i in `seq 0 1 $((${#array[@]} - 1))`
do
	if [[ ${#array[$i]} -le $length ]]
	then
		length=${#array[$i]}
		smaller[$smallCount]=${array[$i]}
		smallCount=$(($smallCount+1))
	fi
done

# **************** smallest list code ************************

smallestLength=${#smaller[-1]}
smallCount=0
for i in `seq $((${#smaller[@]} - 1)) -1 0`
do
	if [ ${#smaller[$i]} -eq $smallestLength ]
	then
		smallest[$smallCount]=${smaller[$i]}
		smallCount=$(($smallCount+1))
	else 
		break
	fi
done
echo The Shortest usernnames are : ${smallest[@]}