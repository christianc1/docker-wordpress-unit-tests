FROM composer/composer
MAINTAINER Morgan O'Neal <moneal@alpine.io>
#RUN mkdir -p /var/app
#WORKDIR /var/app
#ENTRYPOINT ["echo 'test"]
ADD . /tmp
#WORKDIR /app
#RUN composer update
RUN apt-get update

RUN apt-get -y install mysql-client

RUN /tmp/bin/install-wp-tests.sh wordpress-test root "**lol*secret**" db
#RUN ls
#RUN vendor/bin/phpunit
