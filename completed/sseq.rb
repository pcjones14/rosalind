seqs = []
File.open('seq.fas').each {|line| seqs += [line.strip] unless line[0] == '>'}

indices = []
j = 0
(0...seqs[1].length).each do |i|
	j += 1 while seqs[0][j] != seqs[1][i]
	indices += [j+1]
	j += 1
end 

p indices
