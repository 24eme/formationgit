#!/bin/bash

SERVEUR_SSH=
GIT_DEPOT=

while true; do
    read -p "Saisissez votre prenom et votre nom : " GIT_NOM;
    if test "$GIT_NOM"; then
        break;
    fi
done

while true; do
    read -p "Saisissez votre email : " GIT_EMAIL;
    if test "$GIT_EMAIL"; then
        break;
    fi
done

echo "Déplacement dans l'espace de l'utilisateur"

cd ~

echo "Génération d'une clé ssh"

echo "" | ssh-keygen

echo "Transfert de la clé ssh sur le serveur"

ssh-copy-id $SERVEUR_SSH

echo "Configuration de git"

git config --global user.name $GIT_NOM
git config --global user.email $GIT_EMAIL
git config --global push.default simple

echo "Clone du repository"

git clone $GIT_DEPOT
