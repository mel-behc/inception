FROM debian:buster

RUN apt-get -y update \
    && apt-get install -y nginx \
    && apt-get install -y openssl 

# RUN useradd -r nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=MA"

COPY /tools/nginx.conf /etc/nginx/

CMD [ "nginx", "-g", "daemon off;" ]