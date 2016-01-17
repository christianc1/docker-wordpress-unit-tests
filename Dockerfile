#FROM composer/composer
FROM mysql
MAINTAINER Morgan O'Neal <moneal@alpine.io>
#RUN mkdir -p /var/app
#WORKDIR /var/app
#ENTRYPOINT ["echo 'test"]
ADD . /tmp
#RUN composer update
RUN apt-get update
RUN apt-get -y install curl git php5-cli

#RUN apt-get -y install mysql-client mysql-client
#RUN service mysqld start
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
RUN curl -sS https://getcomposer.org/installer | php
#RUN /tmp/bin/install-wp-tests.sh wordpress-test root '' "$HOSTNAME"
#RUN mysql -uroot -e "show databases;"
#RUN ls /tmp/bin
#RUN vendor/bin/phpunit
#RUN env
