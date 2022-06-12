FROM wordpress

COPY . /var/www/html/

RUN "sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/ports.conf"
RUN "apache2-foreground "$@""

#docker exec -it CONTAINER_ID  /bin/bash
#chown -Rf www-data.www-data .