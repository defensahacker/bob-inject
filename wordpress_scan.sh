#!/bin/bash

domain=$1

wpaths="/readme.html /wp-admin/upgrade.php /wp-admin/update-core.php /wp-admin/install.php /wp-admin/import.php /wp-login.php /wp-admin/setup-config.php /license.txt /wp-includes/wlwmanifest.xml /wp-config-sample.php"

for i in $wpaths; do
	echo
	echo "[*] $domain$i"
	curl -v $domain$i
done
