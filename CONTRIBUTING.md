# 📜 Livre de Recettes des Contributeurs

Bienvenue dans la cuisine collaborative ! Voici comment ajouter vos propres recettes :

## 🍴 Code de Conduite Culinaire
- Respectez les *chefs* existants
- Évitez les *épices toxiques* (code malveillant)
- Gardez le *menu* cohérent

## 👩🍳 Recette pour Contribuer

### 1. Forkez la Cuisine
git clone https://github.com/votrecompte/DockerChef.git
cd DockerChef
git checkout -b votre-specialite

text

### 2. Préparez vos Ingrédients
- Une fonctionnalité = une nouvelle *recette*
- Gardez les *portions* atomiques (petites PR)
- Assaisonnez avec des commentaires clairs

### 3. Faites Goûter vos Plats
Vérifiez la cuisson
docker build -t test-cuisine .

Servez en local
docker run -p 3000:80 test-cuisine

text

### 4. Proposez votre Menu
1. Poussez votre branche : `git push origin votre-specialite`
2. Ouvrez une *PR* (Pull Request = Proposition de Menu)
3. Attendez la validation des *chefs étoilés*

## 🧪 Tests de Dégustation
Toute contribution doit passer ces tests culinaires :
- Cuisson complète : `docker build .` sans erreur
- Goût équilibré : pas de *code smell*
- Présentation : documentation mise à jour

Bon appétit ! 🍽️
