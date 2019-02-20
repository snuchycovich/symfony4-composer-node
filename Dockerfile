FROM node AS node
FROM composer:1.8 AS composer
FROM php:7.2-apache

COPY --from=node /usr/local/bin /usr/local/bin/
COPY --from=node /opt/yarn-v1.13.0/bin/ /opt/yarn-v1.13.0/bin/
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update \
    && apt-get install -y zlib1g-dev \
    && docker-php-ext-install zip \
    && apt-get install unzip \
    && docker-php-ext-install pdo_mysql \
    && a2enmod rewrite