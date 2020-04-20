#! /bin/bash -x
#computaion-4

read -p "enter no1:-" a
read -p "enter no2:-" b
read -p "enter no3:-" c

compute () {
	result1=`awk "BEGIN {print $a + $b * $c }"`
	result2=`awk "BEGIN {print $a * $b + $c }"`
	result3=`awk "BEGIN {print $c + $a / $b }"`
	result4=`awk "BEGIN {print $a % $b + c }"`
	echo "computation-4 is done result=$result4"
}

if [[  $a =~ ^[0-9]+$ ]] && [[ $b =~ ^[0-9]+$ ]] && [[ $c =~ ^[0-9]+$ ]];
then
    	compute
else
	echo "Invalid Input:enter some integers"
fi
