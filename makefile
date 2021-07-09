all : README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "- *Date and time of creation is* **`date`**" >> README.md
	echo -n "- *Lines of Codes in Guessing Game is* **`(cat guessinggame.sh | wc -l)`**" >> README.md
clean:
	rm README.md
