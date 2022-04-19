all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Unix Exercise " > README.md
	echo "## Guessing Game README.md" >> README.md
	echo "\n This is the README.md file needed for the exercise " >> README.md
	echo -n "\n**Date that the file was made:**" >> README.md
	echo -n "\n" >> README.md
	date >> README.md
	echo -n "\n" >> README.md
	echo -n "**The number of lines in the the sh file is:**" >> README.md
	echo -n "\n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md

