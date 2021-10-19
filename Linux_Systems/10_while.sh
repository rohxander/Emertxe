#!/bin/bash

read -p "Enter a number : " num

while [ $num -lt 10 ] 
do
	echo $num
	let num=num+1
done
