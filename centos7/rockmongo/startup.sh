#!/bin/bash

rm -rf /var/www/html/*
cp -rf /etc/mongodb/* /var/www/html/
rm /var/www/html/config.php 
cp /config.php /var/www/html/config.php
exec /usr/sbin/apachectl -D FOREGROUND
