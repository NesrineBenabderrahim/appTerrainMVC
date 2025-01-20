# Étape 1 : Utiliser une image de base officielle de Node.js
FROM node:16

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le code source de l'application
COPY . .

# Étape 6 : Exposer le port utilisé par l'application
EXPOSE 3000

# Étape 7 : Commande pour démarrer l'application
CMD ["npm", "start"]
