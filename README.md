# Bienvenue sur la plateforme de génération et d'automatisation des PDFs de l'ADRAR Formation


# Installation
Lorsque vous récupérez le projet pour la première fois, rendez-vous dans le dossier ``` src ``` et tapez la commande ``` composer install ```.

Importez la base de données pour obtenir l'architecture nécessaire pour le fonctionnement de l'application.

Rendez-vous ensuite dans l'onglet d'administration pour ajouter vos stagiaires 

# Création
## Découvrez toutes les possibilités en vous rendant sur la page d'accueil
Rendez-vous dans l'onglet ``` index.php ```.

## Générez automatiquement des PDFs pré-remplis en sélectionnant les documents à envoyer au tuteur
Rendez-vous dans l'onglet ``` index.php?page=stage ```.

## Générez un PDF à la volée avec le pré-remplissage d'un document
Rendez-vous dans l'onglet ``` index.php?page=titre ```.

## Ajoutez, modifiez, supprimez tout élément depuis l'onglet d'administration
Rendez-vous dans l'onglet ``` index.php?page=admin ```.



# [WIP] TODO
## Gérer le CRUD formateurs/stagiaires/stages/sessions
## Finir de gérer les informations ajoutées à un document généré à la volée + réarranger le positionnement
## Implémenter le système de connexion/inscription/déconnexion
## Envoi d'un code temporaire par défaut à la création (valable 1 semaine) et un code temporaire de réinitialisation (valable 15 minutes)