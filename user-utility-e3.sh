#!/bin/bash

###################  Functions  #####################

source /home/hesham/shellscript/fun-useradd3
source /home/hesham/shellscript/fun-userdel
source /home/hesham/shellscript/fun-listlast10users


####################################################

echo -e  "welcome to user utility tool\n "
echo "1-useradd" 
echo "2-userdel"
echo "3-userslist"

echo -e "please enter your choice 1 , 2 , or 3 \n"

read choice 

echo "you entered choice $choice"

if [ $choice -eq 1 ] 
then    
	useradd_script;
elif [ $choice -eq 2 ] 
then
	userdel_script;
elif [ $choice -eq 3 ] 
then
	listlastuser_script 
else 
	echo "not valied choice"

fi

