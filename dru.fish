function dru --argument site
	if test $site
    else
        echo "[o_Ô] Where are you going?!"
        return 0
    end

	set drupal_version (ls -t /var/www/drupal/sites | head -1)
    set site_path /var/www/drupal/sites/$drupal_version/$site

    if test -e $site_path
	    cd $site_path
        echo "[づ￣ ³￣]づ $site"
    else
        set_color red; and echo "[^._.^]ﾉ $site does not exist."
        set_color normal; and echo "Run: drupal addsite -s $site -v $drupal_version" 
    end
end
