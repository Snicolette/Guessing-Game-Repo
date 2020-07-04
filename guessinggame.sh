filecount=$(ls -1 | wc -l) 

function guessing {
	echo "Guess how many files are in this directory"
	read response
}

guessing

while ! [[ $filecount -eq response ]]
do
	if [[ $response -gt filecount ]]
	then
		echo "Your number is too high"
	else
		echo "Your number is too low"
	fi

	guessing
done

echo "Congratulations!  You've guessed the correct number!"
