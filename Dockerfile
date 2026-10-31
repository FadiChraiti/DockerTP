# Image de base Node.js officielle (version LTS, variante légère)
FROM node:22-alpine

# Répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie des fichiers de dépendances puis installation
COPY package*.json ./
RUN npm install

# Copie du code source
COPY . .

# Port sur lequel l'application écoute
EXPOSE 3000

# Commande par défaut au démarrage du conteneur
CMD ["node", "app.js"]
