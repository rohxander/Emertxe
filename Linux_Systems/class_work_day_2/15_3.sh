#!/bin/bash
read -p "Enter your number : " n

for i in `seq $n -1 1` 
do
	for j in `seq $i`
	do
		echo -n " "
	done
	(( k = $n - $i + 1 ))
	for k in `seq $k`
	do
		echo -n "*"
	done
	echo
done	
