#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
count_files() {
    echo $(ls -l | grep -v '^d' | wc -l)
}

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
guessing_game() {
    local correct_answer=$(count_files)
    local guess=-1

    while [ $guess -ne $correct_answer ]
    do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read guess

        if [ $guess -lt $correct_answer ]; then
            echo "Votre estimation est trop basse. Essayez encore !"
        elif [ $guess -gt $correct_answer ]; then
            echo "Votre estimation est trop haute. Essayez encore !"
        fi
    done

    echo "Félicitations ! Vous avez deviné le bon nombre de fichiers."
}

# Lancer le jeu
guessing_game
