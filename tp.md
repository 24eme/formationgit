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

3. Chaque personne prend son cadavre exquis et le met dans un fichier personnel en le supprimant du fichier commun en y rajoutant une phrase

4. Chaque personne va écrire une nouvelle phrase dans le cadavre exquis d'un autre

### Branches

Commandes vues : git branch, git checkout, git merge, git fetch

1. Création d'une branche nominative

2. Ajout d'une phrase dans son cadavre exquis personnel

3. Tirage au sort et récupération de la dernière phrase du tiré au sort dans son repository

4. Ajout d'une nouvelle phrase dans le tiré au sort

5. Ajout d'une phrase dans son cadavre exquis

6. Récupération de la phrase que l'autre personne à écrit et gestion du conflit

7. Mise en commun de chacune des branches sur master

8. Mise à jour de master et récupération de master sur sa branche perso

### Annuler et retrouver des modifications (pas testé)

Commandes vues : git reset, git checkout, git diff, git rm

1. Aller sur l'ordinateur de son voisin de gauche, supprimer son fichier à soi et faire des modifications dans le fichier du voisin

2. Deviner les modifications qui ont été apportée dans son fichier

3. Annuler les modifications

4. Retrouver l'histoire de son voisin

5. Récupérer le fichier supprimé par son voisin


## Exploration de logs

Cloner le dépot de git : https://github.com/git/git.git

Nous allons l'explorer.

### Pouvez vous trouver les réponses à ces questions ?

1. Qui a fait l'avant dernier commit ? Quand ?

2. Quel est le fichier qui a été modifié en dernier ?

3. Quand a eu lieu la dernière modification de la documenation de git blame (Documentation/git-blame.txt) ?

4. Quelles sont les lignes qui ont été ajoutées dans ce commit ?

5. Quel est le dernier fichier modifié dans le répertoire ``perl`` ?

6. Qui a modifié la ligne #1323 du fichier commit.c ? Quand ?

7. Quel est l'identifiant du commit de la modification de la ligne #1323 ?

8. Quel est le commentaire associé à ce commit ?


### Et si on regardait les branches et les tags ?

1. Combien y a-t-il de branches dans ce projet ?

2. Combien y a-t-il de version dans ce projet ?

3. Combien de fichiers ont été modifiés entre v1.0.0 et v1.0.0a ?

3. Combien y a-t-il eu de commit entre v1.0.0 et v1.0.0a ?

4. Qu'est ce qui manquait dans le fichier ``server-info.c`` entre v1.0.0 et v1.0.0a ?

5. Quelle est la date du premier commit du dépot ?

6. Quel est le but des branches ``master``, ``maint`` et ``next`` ?


### Statistiques ?

1. Combien y a-t-il de commits dans la banche ``master`` ?

2. Combien y a-t-il de contributeurs à ce projet ?

3. Quel est le contributeur le plus actif ? Combien de commit a-t-il réalisé ?

4. Quand l'option « ``push.default simple`` » a-t-elle été introduite dans la documentation ?

5. Qui cuisine le plus dans la banche ``todo`` ?

6. Quelle est la plus vieille ligne de code toujours utilisée ? Qui en est l'auteur ?

7. Que fait la commande git log --graph ?


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

### Initialisation d'un dépot personnel

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
* Commiter
* Aller sur la branche de backup
* Appliquer la modification

### Tag

* Créer un tag

### Rebase

* Faire une fusion avec rebase
* Mélanger plusieurs commit en un seul

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

* Récapituler les commandes en début de journée/demi-journée
* Terminer par un exercice récapitulatif

### Glossaire

* Le répertoire de travail : un bac à sable où vous pouvez essayer vos modifications avant de les transférer dans votre index puis le valider dans votre historique.
* Index : Zone de préparation
* HEAD : Instantané de la dernière validation (pointeur vers le dernier commit de la branche en court)
* HEAD^n : Pointe le n-ième commit depuis HEAD

### Ressources d'aides et schema

* Livre de git : https://git-scm.com/book/fr/v2
* Politique branches : https://git-scm.com/book/en/v2/images/lr-branches-2.png
