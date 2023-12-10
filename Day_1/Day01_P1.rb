
total = 0

File.open("input.txt", "r") do |file|
  	file.each do |line|
		first = -1
		last = -1

    	line.each_char do |i|
      	if(i.match?(/[[:digit:]]/))
        		if(first == -1)
					first = i.to_i
					last = i.to_i
				else
					last = i.to_i
				end
      	end
    	end

		total += (first*10 + last)
		first = -1
		last = -1
  	end
  	puts total
end
