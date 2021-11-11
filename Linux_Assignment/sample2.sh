#! /bin/bash

read -p "Enter the number" num

echo ${#num}
for i in `seq 0 1 ${#num}`
do
	echo ${num:0:1}
done