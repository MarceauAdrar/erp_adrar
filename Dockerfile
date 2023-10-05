# Utilisez l'image PHP officielle en tant qu'image de base
FROM php:8.2-apache

# Installation des extensions PHP nécessaires pour votre application
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Configuration de l'extension PHP mysqli
RUN echo "mysqli.default_socket=/var/run/mysqld/mysqld.sock" >> /usr/local/etc/php/php.ini

# Copiez les fichiers de votre application dans le conteneur
COPY . /var/www/html

# Exposer le port 8080 pour le serveur Apache
EXPOSE 8080

# Installation de MySQL Client (facultatif, pour la gestion de la base de données depuis le conteneur)
RUN apt-get update && apt-get install -y 

# Commande pour démarrer le serveur Apache (vous pouvez personnaliser cette commande en fonction de vos besoins)
CMD ["apache2-foreground"]