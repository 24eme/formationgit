## 1. Git SVN

* Cloner le repository SVN
* Faire 2 commits et les pusher sur le svn
* Faire une modification sur le SVN
* Récupéréer la modifications
* Modifier un fichier sur SVN et le commiter
* Modifier le même fichier sur GIT et gérer le conflit

Migration

* Créer un dépot distant pour héberger le repository svn
* Ajouter en remote ce nouveau repository dans le git svn et le pousser

* Le faire ajouter le remote du nouveau dépot git

## 1. Initialisation d'un dépot personnelle

* Création d'un répot à la racine de l'espace utilisateur
* Ajouter le .gitignore pour ne gérer que le .bash_history
* Commiter la première version du fichier
* Créer une branche debut_exercice pour sauvegarder l'état

## 2. Reset / Checkout

* echo "motdepassedelarmenucleaire" >> .bash_history
* Ajouter à l'index
* Enlever l'index
* Annuler la modification

Même exercice mais cette fois on le commit

* Annuler le commit (git reset --hard)

Récupération

* Supprimer le contenu du fichier et Commiter
* Récupérer le fichier à l'aide de checkout

## 4. Stash

* Récupérer l'historique
* Commiter 1 fois des modifications
* Récupérer de nouveau l'historique

* Changer de branche pour supprimer les commandes utilisés ce matin
* Commiter

## 5. Cherry-pick

* Retourner sur master
* Ajouter tout en haut du fichier un titre
* Commité
* Aller sur la branche de backup
* Appliquer la modification

## 6. Outils utilisant git

Outils pour gérer des déposts

* Github
* Gogs
* Gitlab
* Framagit

Compatibilité

Utilisation : https://git-scm.com/book/fr/v2/Git-et-les-autres-syst%C3%A8mes-Git-comme-client
Migration : https://git-scm.com/book/fr/v2/Git-et-les-autres-syst%C3%A8mes-Migration-vers-Git

* Git avec SVN
* Git avec Mercurial
* Git avec Bazaar

Outils utilisant git

* git-annex
* git-etc
* git-mediawiki
* git-ftp
* git-cvs
* git-it
* git-doc
* etckeeper: https://etckeeper.branchable.com/
* calypso : https://github.com/agx/calypso

## 7. TP récapitulatif
