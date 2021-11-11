#!/bin/bash
array=($@)			#assign all CLA into array
num=$#				#get the count of CLA
for i in ${array[@]}	
do
	sum=$(($sum+$i))	#get the total sum
done
echo `expr "scale=2; $sum / $num" | bc`		#printing the average 