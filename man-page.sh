#!/bin/bash

while getopts "ha:" opt
do
    case $opt in
        h) echo "this is command help" ;;
        a) username=$OPTARG
           echo "the entered user is $username" ;;
        \?) echo "Invailed Option" ;;
    esac
done
