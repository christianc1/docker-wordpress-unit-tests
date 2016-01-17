#FROM composer/composer
FROM mysql
MAINTAINER Morgan O'Neal <moneal@alpine.io>

ADD . /tmp
RUN apt-get update
RUN apt-get -y install curl git php5-cli

ENV COMPOSER_VERSION 1.0.0-alpha11

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION}

RUN /tmp/bin/install-wp-tests.sh wordpress-test root '' "$HOSTNAME"
