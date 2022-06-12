FROM wordpress

COPY . /var/www/html/

COPY ./run-apache2.sh /usr/local/bin/
RUN chmod u+x run-apache2.sh
CMD [ "run-apache2.sh" ]

#docker exec -it CONTAINER_ID  /bin/bash
#chown -Rf www-data.www-data .