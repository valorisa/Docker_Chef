# 🧑🍳 Recette du Chef - Service Web Gastronomique

# Étape 1 : Préparation des ingrédients de base
FROM node:18-alpine AS preparation

LABEL cuisinier="Votre Nom" \
      specialite="Containerisation 3 étoiles"

# Nettoyer le plan de travail
WORKDIR /cuisine

# Apporter les courses (fichiers sources)
COPY marché/produits-frais ./ingrédients

# Découper et assaisonner
RUN yarn install \
    && yarn cache clean

# ---------------------------------------------------

# Étape 2 : Cuisson finale
FROM nginx:alpine-sous-vide

# Dressage de l'assiette
COPY --from=preparation /cuisine/ingrédients /usr/share/nginx/html

# Ouvrir le passe-plat
EXPOSE 80

# Service à table !
CMD ["nginx", "-g", "daemon off;"]
