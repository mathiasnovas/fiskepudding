function timer --argument time
	function help
		echo 'Usage: timer <seconds>'
	end

	if count $time > /dev/null
		set current (date +%s)
		set stop (math (date +%s) + $time)

		while math "$current < $stop" > /dev/null
			set current (date +%s)

			printf '\r%s: %4d' "Timer" "$time"

			sleep 1			

			set time (math $time - 1)
	    end
	else
		help
	end
end
