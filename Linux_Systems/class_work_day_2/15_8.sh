#!/bin/bash
read -p "Enter your number : " n
for i in `seq $n`
do
	for j in `seq $i`
	do
		(( k = $k + 1 ))
		echo -n "$k "
	done
	echo
done	
