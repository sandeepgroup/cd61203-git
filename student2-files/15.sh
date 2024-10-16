echo "Please enter a filename: "
read filename
if [[ -f $filename && -x $filename && -w $filename ]]
then
	echo "File is regular, writable, and executable."
elif [[ -f $filename && -x $filename ]]
then
	echo "File is not writable"
elif [[ -f $filename && -w $filename ]]
then
	echo "File is not executable"
elif [[ -f $filename ]]
then
	echo "File is not writable and executable"
else
	echo "File is not a regular file"
fi
