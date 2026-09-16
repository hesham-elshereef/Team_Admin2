#!/bin/bash

show_help () {
	cat << EOF
Options:
-h show help message
-a for add new user and you should enter username as an argument
EOF
}

while getopts "ha:" opt
do
    case $opt in
        h)  show_help ;;
        a) username=$OPTARG
           echo "the entered user is $username" ;;
        \?) echo "Invailed Option" ;;
    esac
done
