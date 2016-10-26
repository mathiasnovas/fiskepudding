function wwdf
	df -h | grep ww | awk -F \  '{print $5}'
end
