require './bioinfo'

fasta = Fasta.new('seq.fas').hash

output = fasta.first[1]
fasta.each do |parent_name, parent_seq|
	fasta.each do |child_name, child_seq|
		next if parent_name == child_name
		half = ([parent_seq.length, child_seq.length].min)/2
		(0..child_seq.length).each do |i|
			if output[(output.length-half)...output.length] == child_seq[i...i+half]
				output += child_seq[i+half...child_seq.length]
			end
		end
	end
end

p output
#File.write('./output.txt', output)

# ATTAGACCTG
#       CCTGCCGGAA
#    AGACCTGCCG
#          GCCGGAATAC
# ATTAGACCTGCCGGAATAC
# ATTAGACCTGCCGGAATAC

# AATATATTCTTCTGCTGGTACGTGTGATGTATAATGTGCCCCTGTATATGATAAAATCGCATATAGGGCCCC
# AATATATTCTTCTGCTGGTACGTGTGATGTATAATGTGCCCCTGTATATGATAAAATCGCATATAGGGCCCC
# AATATATTCTTCTGCTGGTACGTGTGATGTATAATGTGCCCCTGTATATGATA
#   TATATTCTTCTGCTGGTACGTGTGATGTATAATGTGCCCCTGTATATGATAAAATC
#                               ATAATGTGCCCCTGTATATGATAAAATCGCATATAGGGCCCC