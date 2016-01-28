function gchmod --argument file
	command stat --format '%a' $file
end
