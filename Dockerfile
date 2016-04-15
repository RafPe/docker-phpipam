FROM debian:wheezy


RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install apache2 libapache2-mod-php5 php5-mysql vim curl php5-gmp php5-ldap php-pear && apt-get clean

RUN mkdir /var/www/html/
COPY 000-default.conf /etc/apache2/sites-available/default
COPY html /var/www/html

RUN a2enmod rewrite

# apache env vars
ENV APACHE_LOCK_DIR /var/lock
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2/
ENV APACHE_PID_FILE /var/apache.pid

# PHP env vars
#ENV MYSQL_DB_HOSTNAME mysql
#ENV MYSQL_DB_USERNAME phpipam
#ENV MYSQL_DB_PASSWORD phpipamAdmin
#ENV MYSQL_DB_NAME phpipam

EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
