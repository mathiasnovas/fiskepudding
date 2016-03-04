function wp --argument site
	if test $site
    else
        echo "[o_Ô] Where are you going?!"
        return 0
    end

    set wp_path /var/www/wordpress

    if test -e $wp_path
    else
        echo "Hmm... You do not appear to have a local wp directory. I looked for: $wp_path"
        return 0
    end

    set site_path /var/www/wordpress/$site

    if test -e $site_path
	    cd $site_path
        echo "[づ￣ ³￣]づ $site"
    else
        set_color red; and echo "[^._.^]ﾉ $site does not exist."
    end
end
