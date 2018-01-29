locations = []

puts "Enter sequence: "
seq = gets.chomp
puts "Enter motif: "
motif = gets.chomp
(0..seq.length).each do |i|
	if seq[i...(motif.length+i)] == motif
		locations += [(i+1)]
	end
end

output = ""
locations.each do |i|
	output += i.to_s + " "
end

p output