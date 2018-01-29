seq = ""
File.open('data.txt').each {|line| seq += line.chomp}

codons = []
(0...seq.length/3).each {|i| codons += [seq[(i*3)..(i*3+2)]]}

protein = ""
codons.each do |codon|
	if codon == "UAA" || codon == "UAG" || codon == "UGA"
		break
	elsif codon == "UUU" || codon == "UUC"
		protein += "F"
	elsif codon == "UUA" || codon == "UUG"
		protein += "L"
	elsif codon == "UCU" || codon == "UCC" || codon == "UCA" || codon == "UCG"
		protein += "S"
	elsif codon == "UAU" || codon == "UAC"
		protein += "Y"
	elsif codon == "UGU" || codon == "UGC"
		protein += "C"
	elsif codon == "UGG"
		protein += "W"
	elsif codon == "CUU" || codon == "CUC" || codon == "CUA" || codon == "CUG"
		protein += "L"
	elsif codon == "CCU" || codon == "CCC" || codon == "CCA" || codon == "CCG"
		protein += "P"
	elsif codon == "CAU" || codon == "CAC"
		protein += "H"
	elsif codon == "CAA" || codon == "CAG"
		protein += "Q"
	elsif codon == "CGU" || codon == "CGC" || codon == "CGA" || codon == "CGG"
		protein += "R"
	elsif codon == "AUU" || codon == "AUC" || codon == "AUA"
		protein += "I" 
	elsif codon == "AUG"
		protein += "M"
	elsif codon == "ACU" || codon == "ACC" || codon == "ACA" || codon == "ACG"
		protein += "T"
	elsif codon == "AAU" || codon == "AAC"
		protein += "N"
	elsif codon == "AAA" || codon == "AAG"
		protein += "K"
	elsif codon == "AGU" || codon == "AGC"
		protein += "S"
	elsif codon == "AGA" || codon == "AGG"
		protein += "R"
	elsif codon == "GUU" || codon == "GUC" || codon == "GUA" || codon == "GUG"
		protein += "V"
	elsif codon == "GCU" || codon == "GCC" || codon == "GCA" || codon == "GCG"
		protein += "A"
	elsif codon == "GAU" || codon == "GAC"
		protein += "D"
	elsif codon == "GAA" || codon == "GAG"
		protein += "E"
	elsif codon == "GGU" || codon == "GGC" || codon == "GGA" || codon == "GGG"
		protein += "G"
	else
		protein += " E R R O R "
	end
end

p protein