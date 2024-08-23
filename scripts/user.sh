#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]
do
	read -p "Please enter your name and age: " name age

	if [[ (-z $name) || (-z $age) ]]
	then 
		echo "Not enough parameters passed"
		continue
	elif [[ ! $name =~ ^[A-Za-z]+$ ]]
	then
		echo "Non alpha characters detected [$name]"
		continue
	elif [[ ! $age =~ ^[0-9]+$ ]]
	then 
		echo "Non digit characters detected [$age]"
		continue
	fi 
	VALID=1
done
echo "Name = $name and Age = $age"
exit 0
