function wwdf
	df -h | grep ww | awk -F '\ ' '{print $8}'
end
