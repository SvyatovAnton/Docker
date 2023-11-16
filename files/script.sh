#!/bin/bash

sed -i 's|%OWNER%|'"$OWNER"'|g' /var/www/index.html
sed -i 's|%TYPE%|'"$TYPE"'|g' /var/www/index.html

echo "Start Script --- OK"

nginx -g 'daemon off;'
