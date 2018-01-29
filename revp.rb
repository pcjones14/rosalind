seq = ""
file = File.open('seq.fas').each {|line| seq += line.chomp unless line[0] == '>'}


lengths = [4]
lengths.each do |j|
	(0..seq.length).each do |i|
		first_half = seq[i...(i+j/2)]
		second_half = seq[(i+j/2)...(i+j)]
		second_half_complement = ''
		second_half.each_char do |char|
			if char == 'A'
				second_half_complement += 'T'
			elsif char == 'T'
				second_half_complement += 'A'
			elsif char == 'G'
				second_half_complement += 'C'
			elsif char == 'C'
				second_half_complement += 'G'
			end
		end
		puts "First half: " + first_half
		puts "Second half: " + second_half
		puts "Complement: " + second_half_complement
	end
end
