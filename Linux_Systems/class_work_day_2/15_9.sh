#!/bin/bash
read -p "Enter your number : " n
for i in `seq $n`
do
	for j in `seq $i`
	do
		(( k = $i % 2 ))
		(( z = $j % 2 ))
		if [ $k -ne $z ]
		then
			echo -n "0 "
		else
			echo -n "1 "
		fi
	done
	echo
done	
