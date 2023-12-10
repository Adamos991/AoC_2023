
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

		match_b = line.match(/([1-9][5-9]|[2-9][0-9]|\d{3,})\s+blue/)
		match_r = line.match(/([1-9][3-9]|[2-9][0-9]|\d{3,})\s+red/)
		match_g = line.match(/([1-9][4-9]|[2-9][0-9]|\d{3,})\s+green/)

		if(match_b || match_g || match_r)
			round = false
		else
			count += line.match(/([0-9]+)/)[0].to_i
		end

	end
	puts count
end
