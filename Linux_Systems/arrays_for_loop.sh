#!/bin/bash

read -p "Enter the array elements" -a arr
if [ ${#arr[@]} -ge 4 ]
then
	echo Enter the elements :
	for i in `seq 0 $((n - 1))`
	do
		read arr[$i]
	done


echo " All the elements of array :" ${arr[*]}
echo " All the elements of array :" ${arr[@]}
echo " All the elements of array :" ${arr[*]}
echo " The array length :" ${#arr[*]}
echo " The array length :" ${#arr[@]}
echo " The 1st element of array :" ${arr}
echo " The 1st element of array :" ${arr[0]}
echo " The length of 1st element of array :" ${#arr}
echo " The length of 1st element of array :" ${arr[0]}
echo " The last element of array :" ${arr[-1]}
echo " The length of last element of array : " ${#arr[-1]}
echo " The last element of array :" ${arr[ ${#arr[*]} - 1 ]}
else
	echo Insufficient number of elements !!
fi
