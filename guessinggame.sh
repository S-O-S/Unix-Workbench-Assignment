#!bin/bash

function match() {
	echo "Congrats! you have guessed correctly"
}

no_of_files=$(ls -l ./ | egrep  "^-" | wc -l)

echo "How many files are in the current directory ?"

while true;
do
	echo -n "Guess the number of files : "
	read user_guess
	if [[ $user_guess -gt $no_of_files ]];
	then
		echo "Your guess is on little higher side"
	elif [[ $user_guess -lt $no_of_files ]];
	then
		echo "Your guess is on little lower side"
	else
		match;
		break;
	fi
done
