#!/bin/bash

# Fonction pour deviner le nombre de fichiers
function guess_files() {
    # Nombre correct de fichiers dans le répertoire
    local correct_answer=$(ls | wc -l)
    local user_guess=-1  # Initialiser la variable avec une valeur incorrecte

    # Boucle pour demander jusqu'à ce que l'utilisateur devine correctement
    while [[ $user_guess -ne $correct_answer ]]; do
        echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
        read user_guess  # Lire l'entrée de l'utilisateur
        
        # Vérifier si la réponse est trop basse, trop haute, ou correcte
        if [[ $user_guess -lt $correct_answer ]]; then
            echo "Trop bas, essayez encore !"
        elif [[ $user_guess -gt $correct_answer ]]; then
            echo "Trop haut, essayez encore !"
        fi
    done
    
    echo "Bravo ! Vous avez deviné le bon nombre de fichiers."
}

# Appel de la fonction
guess_files
