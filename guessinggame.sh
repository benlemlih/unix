#!/bin/bash

# Fonction principale
function play_guessing_game {
    local file_count=$(ls -1 | wc -l)
    local user_guess=0

    echo "Bienvenue dans le jeu de devinettes !"

    while [[ $user_guess -ne $file_count ]]; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read user_guess

        if [[ $user_guess -lt $file_count ]]; then
            echo "Trop bas. Essayez à nouveau."
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Trop haut. Essayez à nouveau."
        else
            echo "Félicitations ! Vous avez deviné correctement."
        fi
    done
}

play_guessing_game
