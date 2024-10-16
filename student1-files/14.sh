echo "Give me a number in between 50 to 200"
read n
if [[ $n -gt 50 && $n -lt 200 ]]
then
	echo "Number is in the valid range"
else
	echo "Number is out of range"
fi
