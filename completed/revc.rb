sequence = gets.chomp
complement = ""

sequence.each_char do |char|
  if char == "A"
    complement += "T"
  elsif char == "T"
    complement += "A"
  elsif char == "G"
    complement += "C"
  elsif char == "C"
    complement += "G"
  end
end

puts "\n" + complement.reverse