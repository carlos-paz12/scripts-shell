#!/bin/bash
first=50
last=100
attempts=0

clear

while [ -e $0 ]
do
	echo "Enter a number:"
	read n
	
	attempts=$(( $attempts + 1 ))

	if [ $n -ge $first ] && [ $n -le $last ]
	then
		echo -e "\nSuccefull!"
		break
	else
		echo -e "\nFail!\nAgain? (S/N)"
		read r
		
		echo ""
		
		if [ $r == "S" ]
		then
			continue
		else
			echo "You lost"
			break
		fi
	fi
done

clear

echo "Total attempts: $attempts"
