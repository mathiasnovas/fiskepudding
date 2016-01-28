function dru --argument site
	set drupal_version (ls -t /var/www/drupal/sites | head -1)

	cd /var/www/drupal/sites/$drupal_version/$site
end
