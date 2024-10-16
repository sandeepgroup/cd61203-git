#!/bin/bash

read -p "Please enter the positive digit: " n
sum=0
while [[ $n -lt 0 ]]
do
	echo "Please input a positive integer"
	exit 1
done
while [[ $n -gt 0 ]]
do
	mod=$(( n % 10 ))
	sum=$(( sum + mod ))
	n=$(( n / 10 ))
done
echo "The sum is: $sum"
