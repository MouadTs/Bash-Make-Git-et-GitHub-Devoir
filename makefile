# Règle pour générer README.md à partir de guessinggame.sh
README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "" >> README.md
    echo "This is a guessing game where the user has to guess the number of files in the current directory." >> README.md
    echo "" >> README.md
    echo "## Number of lines of code in guessinggame.sh:" >> README.md
    wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
    echo "" >> README.md
    echo "## Last run of make:" >> README.md
    date >> README.md

# Règle pour nettoyer les fichiers générés
clean:
    rm -f README.md
