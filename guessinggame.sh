#!/bin/bash

# Fonction pour vérifier si la réponse est correcte
check_guess() {
    local guess=$1
    local files=$(ls -A | wc -l)

    if [[ $guess -eq $files ]]; then
        echo "Congratulations! You guessed the correct number of files: $files"
        exit 0
    elif [[ $guess -lt $files ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
}

# Main script
echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"
read -p "Please enter your guess: " guess

while [[ true ]]; do
    check_guess $guess
    read -p "Please enter your guess: " guess
done
