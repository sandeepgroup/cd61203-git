#!/bin/bash
echo "Give me a positive integer"
read n
sum=0
if [[ $n -le 0 ]]
then
	echo "You give a wrong input,please give a positive integer"
fi

while [[ $n -gt 0 ]]
do
	for  (( i=0;i<=$n;i++ ))
	do
		sum=$(($sum+$i))
	done
	echo "The sum is: "$sum

	sum=0
	echo "Give me the next positive integer"
	read n
	if [[ $n -le 0 ]]
        then
          echo "You give a wrong input,please give a positive integer"
        fi

done
