FROM php:8.4.25-apache
# VULNERABLE: PHP 8.4.25 is affected by php2shell
COPY . /var/www/html/
