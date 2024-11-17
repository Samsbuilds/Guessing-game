README.md: guessinggame.sh
	@echo "# Projet de jeu de devinette de fichiers" > README.md
	@echo "Date et heure d'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Fichier README généré automatiquement par Makefile" >> README.md
	@echo "------------------------" >> README.md
	@echo "Détails du projet : " >> README.md
	@echo "Le script guessinggame.sh demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
