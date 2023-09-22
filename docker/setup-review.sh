#!/bin/bash -e

until mysql -h db -P 3306 -D $WORDPRESS_DB_NAME -u $WORDPRESS_DB_USER -p$WORDPRESS_DB_PASSWORD -e '\q'; do
  >&2 echo "Database is not up yet..."
  sleep 2
done

>&2 echo "Datebase is up - Setting up WordPress Review Site..."

cd /var/www/html

wp core install --path="/var/www/html" --url="http://localhost:8000" --title=prt --admin_user=prt --admin_password=prt --admin_email=prt@wp.org --skip-email;
wp plugin delete akismet hello;
wp plugin install developer --activate;
wp plugin install debug-bar --activate;
wp plugin install query-monitor --activate;
wp plugin install /plugin.zip --activate;