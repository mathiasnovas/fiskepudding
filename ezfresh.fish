function ezfresh
	set current_path (pwd)

	echo "(• ε •) Updating eZ extensions" 
	cd /var/www/ez_vm/4.7/ext/; and git pull; and git submodule init; and git submodule update
    echo ""
 
	echo "(• ε •) Updating eZ core" 
	cd /var/www/ez_vm/4.7/ez/; and git pull; and git submodule init; and git submodule update
    echo ""   

    set_color green
    echo "(｡ ‿ ｡) done"

    cd $current_path
end
