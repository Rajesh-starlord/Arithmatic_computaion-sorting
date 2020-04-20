#! /bin/bash -x
read -p "enter no1:-" no1
read -p "enter no2:-" no2
read -p "enter no3:-" no3
if [[  $no1 =~ ^[0-9]+$ ]] && [[ $no2 =~ ^[0-9]+$ ]] && [[ $no3 =~ ^[0-9]+$ ]];
then
    	echo "$no1 $no2 $no3"
else
	echo "Invalid Input:enter some integers"
fi
