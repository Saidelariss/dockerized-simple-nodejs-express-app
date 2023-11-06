# Utilisez l'image officielle de Node.js comme image de base
FROM node:14

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez les fichiers de votre application dans le conteneur
COPY package*.json ./
COPY . .

# Installez les dépendances de l'application
RUN npm install

# Exposez le port sur lequel votre application écoute
EXPOSE 3000

# Commande pour exécuter votre application
CMD [ "npm", "start" ]
