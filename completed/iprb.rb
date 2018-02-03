puts "Homozygous dominant? > "
dom = gets.chomp.to_f
puts "Heterozygous? > "
hetero = gets.chomp.to_f
puts "Homozygous recessive? > "
rec = gets.chomp.to_f
total = dom + hetero + rec

prob = 0.0

# dom -> dom
prob += (dom / total) * ((dom - 1) / (total - 1))

# dom -> hetero
prob += (dom / total) * (hetero / (total - 1))

# hetero -> dom
prob += (hetero / total) * (dom / (total - 1))

# dom -> rec
prob += (dom / total) * (rec / (total - 1))

# rec -> dom
prob += (rec / total) * (dom / (total - 1))

# hetero -> hetero
prob += 0.75 * ((hetero / total) * ((hetero - 1) / (total - 1)))

# hetero -> rec
prob += 0.5 * ((hetero / total) * (rec / (total - 1)))

# rec -> hetero
prob += 0.5 * ((rec / total) * (hetero / (total - 1)))

puts "Probability: " + prob.to_s