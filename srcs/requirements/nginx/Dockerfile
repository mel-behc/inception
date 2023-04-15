FROM debian:buster

RUN apt-get update -y \
    && apt-get install nginx -y \
    && apt-get install openssl -y

# RUN useradd -r nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=MA"

COPY /tools/nginx.conf /etc/nginx/

CMD [ "nginx", "-g", "daemon off;" ]