function drupalupdate --argument sitename toversion
    if begin; test -n "$sitename"; and test -n "toversion"; end
        drupal removesite -s $sitename
        drupal addsite -s $sitename -v $toversion
        # sed -i "s/7.[0-9][0-9]/$toversion/g" /var/www/sublime\ projects/$sitename.sublime-project
        # j $1
    else
        echo usage: updatedrupalsite sitename toversion
    end
end
