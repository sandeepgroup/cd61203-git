echo "Give me a file name"
read n
ef=0
ew=0
ex=0
g=0



if [[ -e $n ]]
then
	g=$(($g+1))
else
	echo "You have given a wrong input,the file doesn't exist"
fi
	
if [[ -f $n ]]
then
    ef=$(($ef+1))
else
    echo "The File is not regular"
	    
fi
    	
if [[ -w $n ]]
then 
	      ew=$(($ew+1))
else
	      echo "The file is not writable"
fi

			
if [[ -x $n ]]
then
      ex=$(($ex+1))
else
  echo "The file is not executable"	
fi

e=$(($ew+$ef+$ex))
if [[ $e == 3 ]]
then
	echo "File is regular, writable and executable"
fi
