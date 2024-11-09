#!/bin/bash

# Mise à jour des paquets
sudo apt-get update

# Installation de Node.js et npm
sudo apt-get install -y nodejs npm

# Création des dossiers du site web
mkdir /home/azureadmin/website
mkdir /home/azureadmin/website/views
mkdir /home/azureadmin/website/public
mkdir /home/azureadmin/website/public/images
mkdir /home/azureadmin/website/public/styles

# Téléchargement des fichiers du site web
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/app.js -O /home/azureadmin/website/app.js
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/public/images/UQAC_logo.png -O /home/azureadmin/website/public/images/UQAC_logo.png
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/public/styles/style.css -O /home/azureadmin/website/public/styles/style.css
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/views/index.ejs -O /home/azureadmin/website/views/index.ejs
wget https://raw.githubusercontent.com/Boucanier/8CLD201_Project_1/main/website/package.json -O /home/azureadmin/website/package.json

# On se place dans le dossier du site web
cd /home/azureadmin/website

# Installation des dépendances
sudo npm install

# Démarrage du serveur
sudo npm start &

exit 0