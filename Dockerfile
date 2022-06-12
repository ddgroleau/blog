FROM wordpress

COPY . /var/www/html/

#docker exec -it CONTAINER_ID  /bin/bash
#chown -Rf www-data.www-data .