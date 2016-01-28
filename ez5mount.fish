function ez5mount
	if grep ez5 /Volumes
	else
		mkdir /Volumes/ez5
	end

	sshfs -p 2222 ez5:/var/www /Volumes/ez5 -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=ez5VagrantVm
end
