#!/bin/bash
clear
name=$1
password_save="123456"
attempts=5

echo -e "\e[1;36mWelcome, $name! :D\e[0m"

while [ $attempts -ne 0 ];
do
	echo -en "\nEnter your password: "
	read -s password_entered
	
	if [ $password_entered == $password_save ];
	then
		echo -e "\n\e[32mCorrect password!\e[0m"
		exit
	else
		echo -e "\n\e[31mPassword invalid! Please, try again...\e[0m"
		attempts=$(( $attempts - 1 ))

		if [ $attempts -eq 0 ];
		then
			echo -e "\n\e[1;31mAccount blocked, contact the support for more information.\e[0m"
		fi
	fi
done
