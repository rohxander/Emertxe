#!/bin/bash
read -p "Enter your number : " n

for i in `seq $n` 
do
        for j in `seq $n`
        do
		echo -n "1 "
	done
	echo
done	
