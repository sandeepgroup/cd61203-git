echo "Enter a number: "
read num
if [[ $num -gt 50 && $num -lt 200 ]];
then
	echo "Number is in the valid range"
else
	echo "Number is out of range"
fi

