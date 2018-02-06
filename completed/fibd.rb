bunnies = [1]
print "Number of months to breed? > "
months = gets.strip.to_i
print "Number of months for bunny to live? > "
mortality = gets.strip.to_i

(0...months-1).each do
    bunnies.unshift(bunnies.inject(0, :+) - bunnies[0])
    bunnies = bunnies[0...mortality]
end

