#!/bin/bash 
if [ $# -ge 4 ] 
then 
	arr=($@) 
	echo "All the CLAs: ${arr[@]} 
	All the CLAs: ${arr[*]} 
	All the CLAs: $@ 
	The Total number of CLAs: ${#arr[@]} 
	The Total number of CLAs: ${#arr[*]} 
	The Total number of CLAs: $# 
	The 1st CLA: ${arr} 
	The 1st CLA: ${arr[0]} 
	The 1st CLA: $1 
	The length of 1st CLA: ${#arr[0]} 
	The length of 1st CLA: ${#arr} 
	The 3rd CLA: ${arr[2]} 
	The 3rd CLA: $3 
	The length of 3rd CLA: ${#arr[2]} 
	The last CLA: ${arr[-1]} 
	The last CLA: ${arr[${#arr[@]} - 1]} 
	The last CLA: ${arr[$# - 1]} 
	The length of last CLA: ${#arr[-1]} 
	The length of last CLA: ${#arr[${#arr[@]} - 1]} 
	The length of last CLA: ${#arr[$# - 1]}" 
else 
	echo Insufficient CLAs !! 
fi
if [ $# -ge 3 ]
then
	echo "All the command Line arguments:" $@
	echo "The name of the script : $0
	Total number of CLA: $#
	The first CLA: $1
	The 3rd CLA:" $3
else
	echo min of 3 CLAs is must !!
fi
