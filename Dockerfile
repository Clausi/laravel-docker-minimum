FROM php:7.2.7-fpm

RUN apt-get update && apt-get install -y mysql-client \
    libmagickwand-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql

RUN usermod -u 1000 www-data \
    && chown -R www-data:www-data /var/www
