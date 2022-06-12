FROM wordpress

COPY . /var/www/html/

COPY ./run-apache2.sh /usr/local/bin/
CMD [ "run-apache2.sh" ]

#docker exec -it CONTAINER_ID  /bin/bash
#chown -Rf www-data.www-data .