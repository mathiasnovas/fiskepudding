function dru --argument site
	set drupal_version (ls -t /var/www/drupal/sites | head -1)
    set site_path /var/www/drupal/sites/$drupal_version/$site

    if test -e $site_path
	    cd $site_path
    else
        set_color red; and echo 'Site does not exist.' 
        set_color normal; and echo "Run: drupal addsite -s $site -v $drupal_version" 
    end
end
