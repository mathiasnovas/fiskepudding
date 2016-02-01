function fresh
	set curr_dir (pwd)

	echo "(• ε •) Updating Drupal"
	cd $DRUPAL_PATH/bin; and git pull; and echo ""

    echo "(• ε •) Updating Magento"
    cd $MAGENTO_PATH/bin; and git pull; and echo ""
 
    echo "(• ε •) Updating eZ"
    cd $EZ_PATH/bin; and git pull; and echo "" 

    set_color green;
    echo "(｡ ‿ ｡) Done!"

    cd $curr_dir
end
