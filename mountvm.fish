function mountvm
	mkdir -p /Volumes/vm; and sshfs vm:/var/www /Volumes/vm
end
