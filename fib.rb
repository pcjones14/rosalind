baby_rabbits = 1
adult_rabbits = 0
newborn_rabbits = 0
print "Months to breed? > "
months = gets.strip.to_i
print "Babies per mating? > "
babies_per_mating = gets.strip.to_i

(1...months).each do
	newborn_rabbits += adult_rabbits * babies_per_mating
	adult_rabbits += baby_rabbits
	baby_rabbits = newborn_rabbits
	newborn_rabbits = 0
end

p adult_rabbits + baby_rabbits