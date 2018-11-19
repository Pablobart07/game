README.txt: guessinggame.sh
	echo "Tittle: Game" > README.md
	date "+ %m/%d/%y" >> README.md
	wc -l guessinggame.sh >> README.md
	
