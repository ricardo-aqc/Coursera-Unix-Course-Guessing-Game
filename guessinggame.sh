#!/usr/bin/env bash

echo "Welcome to the guessing game program"
echo "In this program, you will try to guess the number of"
echo "files there are in the current directory!"

function ask {
	echo "How many files do you think there are:"
	read guess
    filenumber=$(ls -l |grep "^-"|wc -l)
}

ask

while [[ $filenumber -ne $guess ]]
do
	if [[ $guess -gt $filenumber ]] 
	then
		echo "Your guess is too high. Try again with a lower number!"
	else
		echo "Your guess is too low. Try again with a higher number!"
	fi
	ask
done

echo "You got it right!"
echo "The number of files was $filenumber"
ls -1