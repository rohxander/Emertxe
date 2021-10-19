#!/bin/bash
read -p "Enter your number : " n
for i in `seq $n`
do
	(( k = $k +1 ))
	for j in `seq $i`
	do	
		echo -n "$k "
	done
	echo
done	
