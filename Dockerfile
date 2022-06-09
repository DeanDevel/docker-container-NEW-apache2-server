# PHP extensions
# From: php:8.1-apache
#RUN \
#    docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
#    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
#    && docker-php-ext-install pdo pdo_mysql \
#    && docker-php-ext-enable pdo_mysql
FROM php:8.1-apache
RUN apt-get update
RUN apt-get install nano
RUN docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo_mysql
# COPY 000-default.conf /etc/apache2/sites-available/
RUN a2enmod rewrite