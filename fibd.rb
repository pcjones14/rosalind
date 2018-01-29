bunnies = [0]
print "Number of months to breed? > "
months = gets.strip.to_i
print "Number of months for bunny to live? > "
mortality = gets.strip.to_i
(0...months).each do |i|
    (0...bunnies.length).each do
        bunnies += [0]
    end
    bunnies.map! do |bunny|
        if bunny >= mortality
            bunnies.delete(bunny)
        else
            bunny + 1
        end
    end
end
p bunnies
p bunnies.length