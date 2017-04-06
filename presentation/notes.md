Glossaire

HEAD: Instantané de la dernière validation
Index: Zone de préparation
Le répertoire de travail: un bac à sable où vous pouvez essayer vos modifications avant de les transférer dans votre index puis le valider dans votre historique.

Treeish

HEAD = pointeur vers le dernier commit de la branche en court
HEAD^n = Pointe le nième commit depuis HEAD

Ressources d'aide

Livre de git : https://git-scm.com/book/fr/v2
> git help everyday

À préparer

* La présentation
* Script bash d'installation sur les posts clients
* Post it avec les noms de tout le monde

Présentation

1. Gestionnaire de versions

* Stocker l'état / les versions des différents changements d'un ou plusieurs fichiers
* Pouvoir parcourir cette historique de changements
* Revenir à une version précédente

2. Utilisations

* Projets informatiques (code source, logiciel, site web)
* Données brutes lisibles (csv, config, texte)

3. Objectif

* Comprendre
* Équipe
* Revenir en arrière
* Rassurant
* Maintenabilité / Évolutivité

4. Les Outils

* __Copie de fichiers__

Centralisé

* CVS (1990-2008)
* SVN (2000)

Décentralisé

* BitKeeper (1998)
* Bazaar (2005)
* Mercurial (2005)
* Git (2005)

5. Git un peu d'histoire

Créé en 2005 par Linus Torvald

Noyaux linux

Remplacer BitKeeper (propiétaire)

En 10 jours (Autohébergement) !

Première release en 1 an (3,5 ans pour SVN)

5. Git les faits

Open source

Mature 12 ans

Tous les gros projets open source ont migré dessus :

* Noyau Linux
* Python
* PHP
....
31 millions de projets open source

Utilisé par 12 millions de personnes

Utilisé par Microsoft (géré dans Visual studio)

6. Décentralisé (Avantage)

* Stockage (commit) et synchro décorellé
* Équipé pour gérer des conflits (version non incrémental)
* Plusieurs mode de fonctionnement
* Travail hors connexion
* Plus d'indépendances vis à vis de l'hébergement de repository

Cadavre exquis

Commandes de base

Commandes vues : git add, git commit, git status, git pull, git push

1. Chaque personne écrit une phrase pour commencer sont histoire dans sa partie, puis commit ses modifications

2. Tirage au sort général de noms pour que chacun aille écrire la suite de l'histoire d'une autre personne

3. Chaque personne prend sont cadavre excquis et le met dans un fichier personnel en le supprimant du fichier commun en y rajoutant une phrase

4. Chaque personne va écrire une nouvelle phrase dans le cadavre exquis d'un autre

Annuler et retrouver des modifications

Commandes vues : git reset, git checkout, git diff, git rm

1. Aller sur l'ordinateur de son voisin de gauche, supprimer son fichier à soi et faire des modifications dans le fichier du voisin

2. Deviner les modifications qui ont été apporté dans son fichier

3. Annuler les modifications

4. Retrouver l'histoire de son voisin

5. Récupérer le fichier supprimé par son voisin

Branches

Commandes vues : git branch, git checkout, git merge

1. Création d'une branche nominative

2. Ajout d'une phrase dans son cadavre exquis personnelle

3. Tirage au sort et récupération de la dernière phrase du tiré au sort dans son repository

4. Ajout d'une nouvelle phrase dans le tiré au sort

5. Ajout d'une phrase dans son cadavre exquis

6. Récupération de la phrase que l'autre personne à écrit et gestion du conflit

7. Mise en commun de chacune des branches sur master

8. Mise à jour de master et récupération de master sur sa branche perso

GIILDA

Logs

Commandes vues : git clone, git log, git blame, git diff, git shortlog

1. Récupérer le code source de GIILDA (https://github.com/24eme/giilda.git)

Sur la branche master

1. Qui a fait l'avant dernier commit et à quelle date ?

2. Quels sont les noms du/des fichier-s modifié-s dans l'avant avant dernier commit

3. Quand a été modifié pour la dernière fois le fichier : project/apps/bivc/config/facture.yml

4. Quelle ligne a été ajouté à ce fichier lors du dernier commit ?

5. Dans les dix derniers commits, le fichier giilda34DRMRelationCascadeTest à été modifié, à combien est égal le stock dont revendique ?

6. Par qui et quand a été modifié la ligne 116 du fichier plugins/acVinSocietePlugin/lib/model/Societe/Societe.class.php

7. Quelle est le numéro de commit de cette modification ligne 116 ?

8. Quelle le commentaire écrit pour ce commit ?

Sur les branches

1. Quelle est la branche courante ?

2. Combien de branches possèdent le projet ?

3. Quelle la particularité du dernier commit dans la branche ivbd

4. Combien de commit de master ne sont pas dans bivc ?

5. Quelle est la différence de code dans le fichier project/bin/exportSageBL.sh entre la branche master et bivc ?

Stats

1. Combien de commit dans la branch master ?

2. Combien de contributeurs dans le projet ?

3. Que fait la commande git log --graph ?

Politique branches

https://git-scm.com/book/en/v2/images/lr-branches-2.png

Initialiser un nouveau dépot git

Installation / Configuration de git (côté client)

Installation / Configuration de git (côté serveur)

Remote

Commandes vues : git remote

1. Ecrire un commit et essayer de le pusher

2. Ajouter le remote du repository github deployer en interne

3. Le pusher sur l'instance deployer en interne

Contribuer à un repository

Github / Pull request

Git SVN

Utilisation du .gitignore

Dossier .git

Git stash

Tags

Cherry-pick

Rebase

Répertoire de travail / Index / HEAD

Commit / Tree / Blob

Logiciels serveurs

Gitlab (framasoft)
Gogs
Github
