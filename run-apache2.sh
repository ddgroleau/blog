#!/usr/bin/env bash

chmod u+x /etc/apache2/ports.conf
sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/ports.conf
sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/apache2.conf
sed -i "s/VirtualHost \*:80/VirtualHost \*:${PORT:-80}/g" /etc/apache2/sites-available/000-default.conf
apache2-foreground "$@"
heroku labs:enable --app=blog-fullstackdan runtime-new-layer-extract