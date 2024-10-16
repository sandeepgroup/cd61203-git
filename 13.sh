echo "Enter a positive integer: "
read num
num1=$num
if [[ $num -lt 0 ]];
then
	echo "Enter a positive integer!"
else
	n=${#num}
	sum=0
	while  [[ $num1>0 ]];
	do
		digit=$(($num1%10))
		sum=$(($sum+$digit))
		num1=$(($num1/10))
	done
	echo "Sum of digits of $num is $sum"
fi
