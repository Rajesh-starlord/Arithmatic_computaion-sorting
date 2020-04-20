#! /bin/bash -x
#store the data into array and sort descending and ascending order

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
	read_val_from_dict ${result_dict[@]}
}
print_result () {
	for data in $@
	do
		echo "$data"
	done
}
read_val_from_dict () {
	c=0
	for val in $@
        do
                values[$c]=`echo $val | awk -F":" '{print $2}'`
		c=$(($c+1))
        done
	echo "values readed and stored in an array"
}
sort_ascending () {

	for ((i=0;i<${#vales[@]};++i))
	do
		for ((j=i+1;j<${#vales[@]};++j))
		do
        		if  [ ${values[$i]} > ${values[$j]} ];
			then
            			temp=${values[$i]}
            			values[$i]=${values[$j]}
            			values[$j]=$temp
       			fi
		done
	done
	echo "result sorted in ascending order"
	echo ${values[@]}
}

if [[  $a =~ ^[0-9]+$ ]] && [[ $b =~ ^[0-9]+$ ]] && [[ $c =~ ^[0-9]+$ ]];
then
    	compute
else
	echo "Invalid Input:enter some integers"
fi

sort_ascending
