values = (1..gets.chomp.to_i).to_a

permutations = 1
values.each do |num|
  permutations *= num
end

(0..values.length-1).each do |i|
  transient_array = values.dup
  transient_value = transient_array[i]
  transient_array.delete_at(i)
  transient_array.unshift(transient_value)
  p transient_array
  puts "\n\n"
end