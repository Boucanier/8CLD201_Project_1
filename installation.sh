#!/bin/bash

# Mise à jour des paquets
sudo apt-get update

# Installation de Node.js et npm
sudo apt-get install -y nodejs npm

# Création du dossier du site web
mkdir /home/azureadmin/website

# Téléchargement des fichiers du site web
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/app.js -O /home/azureadmin/website/app.js
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/website/package.json -O /home/azureadmin/website/package.json

# On se place dans le dossier du site web
cd /home/azureadmin/website

# Installation des dépendances
sudo npm install

# Démarrage du serveur
sudo npm start &

exit 0