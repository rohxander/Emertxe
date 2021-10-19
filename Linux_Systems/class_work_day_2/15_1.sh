#!/bin/bash
read -p "Enter your number : " n

for i in `seq $n`
do
	for j in `seq $i`
	do
		echo -n "*"
	done
	echo
done	
