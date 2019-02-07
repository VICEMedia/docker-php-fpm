FROM php:fpm

RUN apt-get update && \
    apt-get -y install git && \
    apt-get -y install zip

COPY ./install-composer /tmp/install-composer

RUN /tmp/install-composer
