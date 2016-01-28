function getCity --argument zip
	cat postnr_bydeler_oslo.txt | grep $zip | awk -F ' ' '{print $4}'
end
