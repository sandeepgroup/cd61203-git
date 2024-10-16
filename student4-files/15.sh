read -p "Enter filename" filename
if [ -f "$filename" ] && [ -e "$filename" ]
then	
	if ! [ -r "$filename" ]
	then
		echo " $filename is not regular"
	fi
	if ! [ -w "$filename" ]
	then
		echo " $filename is not writable"
	fi
	if ! [ -x "$filename" ]
	then 
		echo " $filename is not executable"
	fi
	if [ -r "$filename" ] && [ -w "$filename" ] && [ -x "$filename" ]
	then
		echo " $filename is regular, writeable and executable"
	fi
else
	echo " $filename is either not existing or is not a file"
fi

