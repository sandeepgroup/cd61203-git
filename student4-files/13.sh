read -p "enter the number" num
sum=0
if ! [[ $num =~ ^[0-9]+$ ]];
then
	echo "Invalid input"
	exit 1
fi

while [ $num -gt 0 ];
do
	digit=$(( num % 10 ))
	sum=$(( sum + digit ))
	num=$(( num / 10 ))
done
echo "the sum of digits is : $sum "
