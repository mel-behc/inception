#!bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out $CERTS -subj "/CN=MA"

sed -i "s|solution|$CERTS|g" /etc/nginx/nginx.conf

nginx -g "daemon off;"