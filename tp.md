# TP formation git

## Prérequis

* git
* ssh
* apache
* svn et git-svn (si besoin git à travers svn)
* création d'un utilisateur git

## Cadavre exquis

### Commandes de base

Commandes vues : git add, git commit, git status, git pull, git push

1. Chaque personne écrit une phrase pour commencer sont histoire dans sa partie, puis commit ses modifications

2. Tirage au sort général de noms pour que chacun aille écrire la suite de l'histoire d'une autre personne

3. Chaque personne prend sont cadavre exquis et le met dans un fichier personnel en le supprimant du fichier commun en y rajoutant une phrase

4. Chaque personne va écrire une nouvelle phrase dans le cadavre exquis d'un autre

### Branches

Commandes vues : git branch, git checkout, git merge, git fetch

1. Création d'une branche nominative

2. Ajout d'une phrase dans son cadavre exquis personnelle

3. Tirage au sort et récupération de la dernière phrase du tiré au sort dans son repository

4. Ajout d'une nouvelle phrase dans le tiré au sort

5. Ajout d'une phrase dans son cadavre exquis

6. Récupération de la phrase que l'autre personne à écrit et gestion du conflit

7. Mise en commun de chacune des branches sur master

8. Mise à jour de master et récupération de master sur sa branche perso

### Annuler et retrouver des modifications (pas testé)

Commandes vues : git reset, git checkout, git diff, git rm

1. Aller sur l'ordinateur de son voisin de gauche, supprimer son fichier à soi et faire des modifications dans le fichier du voisin

2. Deviner les modifications qui ont été apporté dans son fichier

3. Annuler les modifications

4. Retrouver l'histoire de son voisin

5. Récupérer le fichier supprimé par son voisin

## Exploration de logs

https://github.com/24eme/giilda.git

Commandes vues : git clone, git log, git blame, git diff, git shortlog

1. Récupérer le code source de GIILDA (https://github.com/24eme/giilda.git)

### Sur la branche master

1. Qui a fait l'avant dernier commit et à quelle date ?

2. Quels sont les noms du/des fichier-s modifié-s dans l'avant avant dernier commit

3. Quand a été modifié pour la dernière fois le fichier : project/apps/bivc/config/facture.yml

4. Quelle ligne a été ajouté à ce fichier lors du dernier commit ?

5. Quel fichier à été modifié en dernier dans le dossier project/test

6. Par qui et quand a été modifié la ligne 116 du fichier project/plugins/acVinSocietePlugin/lib/model/Societe/Societe.class.php

7. Quelle est le numéro de commit de cette modification ligne 116 ?

8. Quelle est le commentaire écrit pour ce commit ?

### Sur les branches

1. Quelle est la branche courante ?

2. Combien de branches possèdent le projet ?

3. Quelle est la particularité du dernier commit dans la branche ivbd

4. Combien de commit de master ne sont pas dans bivc ?

5. Combien de fichiers ont des différences de code entre master et bivc ?

### Statistiques

1. Combien de commit dans la branch master ?

2. Combien de contributeurs dans le projet ?

3. Que fait la commande git log --graph ?

## Git SVN

* Cloner le repository SVN
* Faire 2 commits et les pusher sur le svn
* Faire une modification sur le SVN
* Récupéréer la modifications
* Modifier un fichier sur SVN et le commiter
* Modifier le même fichier sur GIT et gérer le conflit

### Migration

* Créer un dépot distant pour héberger le repository svn
* Ajouter en remote ce nouveau repository dans le git svn et le pousser

* Le faire ajouter le remote du nouveau dépot git

## Suivre les changements dans .bash_history

### Initialisation d'un dépot personnelle

* Création d'un répot à la racine de l'espace utilisateur
* Ajouter le .gitignore pour ne gérer que le .bash_history
* Commiter la première version du fichier
* Créer une branche debut_exercice pour sauvegarder l'état

### Reset / Checkout

* echo "motdepassedelarmenucleaire" >> .bash_history
* Ajouter à l'index
* Enlever l'index
* Annuler la modification

Même exercice mais cette fois on le commit

* Annuler le commit (git reset --hard)

Récupération

* Supprimer le contenu du fichier et commiter
* Récupérer le fichier à l'aide de checkout

### Stash

* Récupérer l'historique
* Commiter 1 fois des modifications
* Récupérer de nouveau l'historique

* Changer de branche pour supprimer les commandes utilisés ce matin
* Commiter

### Cherry-pick

* Retourner sur master
* Ajouter tout en haut du fichier un titre
* Commité
* Aller sur la branche de backup
* Appliquer la modification

### Tag

* Créer un tag

### Rebase

* Faire une fusion avec rebase
* Melanger plusieurs commit en un seul

## Pull request / patch

* Présentation de github
* Faire un pull request
* Créer un patch et l'appliquer

## Exercice récapitulatif

* Copier la doc de /usr/share/doc dans un nouveau dépot
* Créer une branche pour effectuer un travail de modification de la doc
* Créer un dépot commun et le synchroniser avec son dépot local
* Récupérer le travail de son voisin

## Annexes

### Explications

* .gitignore
* .git/config
* Fonctionnement de HEAD et des branches dans le dossier .git (démistifier)
* Branche distante (origin)
* Répertoire de travail / Index / HEAD
* Commit / Tree / Blob
* Supprimer le versionnement git

### Commandes intéressantes

* git add --patch
* git difftool
* git show
* git archive

### À penser pour le déroulement

* Récapituler les commandes en début de journée (voire demi-journée)
* Terminer par un exercice récapitulatif

### Glossaire

* Le répertoire de travail: un bac à sable où vous pouvez essayer vos modifications avant de les transférer dans votre index puis le valider dans votre historique.
* Index: Zone de préparation
* HEAD: Instantané de la dernière validation (pointeur vers le dernier commit de la branche en court)
* HEAD^n = Pointe le nième commit depuis HEAD

### Ressources d'aides et schema

* Livre de git : https://git-scm.com/book/fr/v2
* Politique branches : https://git-scm.com/book/en/v2/images/lr-branches-2.png
