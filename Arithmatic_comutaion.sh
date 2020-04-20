#! /bin/bash -x
read -p "enter no1:-" a
read -p "enter no2:-" b
read -p "enter no3:-" c
if [[  $a =~ ^[0-9]+$ ]] && [[ $b =~ ^[0-9]+$ ]] && [[ $c =~ ^[0-9]+$ ]];
then
    	echo "$a $b $c"
else
	echo "Invalid Input:enter some integers"
fi
