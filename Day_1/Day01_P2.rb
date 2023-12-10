
total = 0

WORD_TO_DIGIT = {
  "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "zero" => 0,
  "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0,
}

File.open("input.txt", "r") do |file|
  	file.each do |line|
      first = -1
      last = -1

    	first = WORD_TO_DIGIT[line.match(/(\d|one|two|three|four|five|six|seven|eight|nine|zero)/, 0).to_s]
      last = WORD_TO_DIGIT[line.reverse.match(/(\d|eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|orez)/, 0).to_s.reverse]

      if first != -1
		    total += (first*10 + last)
      else
        total += 0
      end

  	end
    puts total
end
