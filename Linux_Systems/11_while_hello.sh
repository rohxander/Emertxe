#!/bin/bash

read -p "Enter a number : " num
var = `expr $num + 10`
while [ $num -lt $var ] 
do
	echo $num
	let num = num + 1
done
