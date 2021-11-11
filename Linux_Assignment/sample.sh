#!/bin/bash

array=($@)			#gettting all CLA into array

for i in `seq 0 1 $((${#array[@]} - 1 ))`  #iterating through all elements in array
do
	if [ ${array[$i]} = -x ]				#true if current element is -x
	then
		x=${array[$(($i+1))]}				#assigning next element to variable x
	elif [ ${array[$i]} = -y ]				#true if current element is -y
	then
		y=${array[$(($i+1))]}				#assigning next element to variable y
	elif [ ${array[$i]} = -o ]				#true if current element is -o
	then
		operator=${array[$(($i+1))]}		#assigning next element to variable operator
		
	fi
done
case $operator in
	add)
		echo -n `expr "$x + $y" | bc`	#adding
		;;
	sub)
		echo -n `expr "$x - $y" | bc` 	#subtracting
		;;
	mul)
		echo -n `expr "$x * $y" | bc`  #multiplying
		;;
	div)
		echo -n `expr "scale=2; $x / $y" | bc`		#dividing
		;;
	*)
		echo unknown operation
		;;
esac