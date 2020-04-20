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
	result_dict=(result1:$result1 result2:$result2 result3:$result3 result4:$result4)
	echo -e "results stored in a dictionary\n"
	print_result ${result_dict[@]}
}
print_result () {
	for data in $@
	do
		echo -e "$data\n"
	done
}


if [[  $a =~ ^[0-9]+$ ]] && [[ $b =~ ^[0-9]+$ ]] && [[ $c =~ ^[0-9]+$ ]];
then
    	compute
else
	echo "Invalid Input:enter some integers"
fi
