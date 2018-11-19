#!/usr/env bash
# File: guessinggame.sh

function guessinggame {

files=$(ls | wc -l)

echo "How many files are in the current directory?"
read number
if [[ $number -eq $files ]]
then

	echo "Good game!"

else [[ $number -lt $files ]]

	i=0
	while [[ $i -ne 1 ]]
	do
		if [[ $number -eq $files ]]
		then
			echo "Good game!"
			i=1
		elif [[ $number -lt $files ]]
		then
			echo " The number is too low, try again"
			read number
			i=0
		else [[ $number -gt $files ]]
			echo " The number is too high, try again"
			read number
			i=0
		fi
	done

fi
}

guessinggame 
