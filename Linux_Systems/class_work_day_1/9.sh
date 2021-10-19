#!/bin/bash

read -p "Enter the number : " k

n = 0
m = 1

for i in `seq $k`
do
	((var = $n + $m ))
	echo $var


done
