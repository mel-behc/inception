#!/bin/bash

# Update PHP-FPM listen port
sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

# download core files
wp core download --path=/var/www/html --allow-root

# Create WordPress config file
wp config create --dbhost=mariadb --dbname=${MYSQL_DB_NAME} --dbuser=${MYSQL_USR} --dbpass=${MYSQL_PWD} --path=/var/www/html --allow-root --skip-check

# Install WordPress and create admin user
wp core install --url=${DOMAINE_NAME} --title="Wordpress page" --admin_name=${WP_USR} --admin_password=${WP_PWD} --admin_email="${ADMIN_EMAIL}"  --path=/var/www/html --allow-root
# create second user
wp user create "${USER}" "${USER_EMAIL}" --user_pass=${WP_PWD}  --allow-root --path=/var/www/html

# Start PHP-FPM
mkdir -p /run/php
php-fpm7.3 -F