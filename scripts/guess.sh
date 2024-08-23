#!/user/bin/env bash

COMPUTER=$(( (RANDOM%50)+1 ))

read -p "Guess a number between 1 to 50 : " number

while true
do
	if [[ $number -eq $COMPUTER ]]
	then
		echo "Hurray! You guess the right number..."
		break
	elif [[ $number -gt $COMPUTER ]]
	then
		echo "Too high!!!"
		read -p "Guess again: " number
	elif [[ $number -lt $COMPUTER ]]
	then 
		echo "Too low!!!"
		read -p "Guess again: " number
	fi
done

exit 0
