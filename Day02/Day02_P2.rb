
MAX_RED = 12
MAX_GREEN = 13
MAX_BLUE = 14

File.open("input.txt", "r") do |file|
	count = 0
	file.each do |line|
		round = true
		max_b = 0;
		max_r = 0;
		max_g = 0;

		match_b = line.scan(/(\d* blue)/)
		match_r = line.scan(/(\d* red)/)
		match_g = line.scan(/(\d* green)/)

		for match in match_b
			if(match[0].match(/([0-9]+)/)[0].to_i > max_b)
				max_b = match[0].match(/([0-9]+)/)[0].to_i
			end
		end

		for match in match_r
			if(match[0].match(/([0-9]+)/)[0].to_i > max_r)
				max_r = match[0].match(/([0-9]+)/)[0].to_i
			end
		end

		for match in match_g
			if(match[0].match(/([0-9]+)/)[0].to_i > max_g)
				max_g = match[0].match(/([0-9]+)/)[0].to_i
			end
		end

		count += (max_b * max_g * max_r)

	end
	puts count
end
