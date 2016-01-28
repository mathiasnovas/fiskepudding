function godmount
	sudo sshfs root@192.168.137.137:/var/www /Volumes/vagrant/mount/ $argv; 
end
