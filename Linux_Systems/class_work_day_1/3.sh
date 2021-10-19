#!/bin/bash

read -p "Enter the numbers : " n m

((z = $n \* $m))
((z = $z % 2))
if [ $z -eq  0 ]
then
	echo The number is even.
else
	echo The number is odd.
fi
