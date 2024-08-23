#!/bin/bash

func1() {
	FILE="script_1.sh"

	for str in $(cat $FILE)
	do 
		echo $str
	done
}

function func2 {
	a=$1
	b=$2

	while [[ $a -lt $b ]]
	do
		echo $a
		let a++
	done

	echo "Arguments are - $@"
}

func2 2 6
echo "First arg: $1"
shift
echo "Remaining arguments supplied to the script: $@"

