FROM debian:buster

RUN apt-get -y update \
    && apt-get install -y curl php-fpm php php-mysql \
    && rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp \
    && chmod +x /usr/local/bin/wp

COPY /tools/wordperssScript.sh /

ENTRYPOINT ["/bin/bash", "wordperssScript.sh"]