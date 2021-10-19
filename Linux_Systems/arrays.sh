#!/bin/bash

read -p "Enter the array elements" -a array
arr=(123 qwerty   abcd emertxe qwe90 )
echo " All the elements of array :" ${array[*]}
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
