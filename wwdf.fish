function wwdf
	df -h | grep ww | Awk -F '\ ' '{print $8}'
end
