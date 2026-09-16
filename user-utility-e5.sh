#!/bin/bash

shopt -s expand_aliases
alias  include="source"

###################  Functions  #####################
source /home/hesham/shellscript/fun-useradd3
source /home/hesham/shellscript/fun-userdel
source /home/hesham/shellscript/fun-listlast10users
####################################################

select choice in "useradd" "userdel"  listlastuser exit

do
case $choice in 
	useradd)   	useradd_script;;

	userdel)	userdel_script;;

	listlastuser)	listlast10users_script ;;

	exit) 		break ;;
	*) 		echo "not valied choice" ;;   
esac
done

