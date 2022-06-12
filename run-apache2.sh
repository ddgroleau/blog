#!/usr/bin/env bash

sudo chmod u+x /etc/apache2/ports.conf
sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/ports.conf
apache2-foreground "$@"