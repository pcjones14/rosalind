puts "Enter sequence: "
sequence = gets
split_sequence = sequence.split(//)

a_count = 0
t_count = 0
g_count = 0
c_count = 0

split_sequence.each do |nuc|
  if nuc.downcase == "a"
    a_count += 1
  elsif nuc.downcase == "t"
    t_count += 1
  elsif nuc.downcase == "g"
    g_count += 1
  elsif nuc.downcase == "c"
    c_count += 1
  end
end

puts "A: " + a_count.to_s
puts "T: " + t_count.to_s
puts "G: " + g_count.to_s
puts "C: " + c_count.to_s