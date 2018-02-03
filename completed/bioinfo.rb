class Fasta
	def initialize(file)
		@file = file
	end
	def hash
		raw = ""
		File.open(@file).each {|line| raw += line}
		strings = raw.split('>')
		strings.shift
		seqs = {}
		strings.each do |seq|
		    seq_array = seq.partition("\n")
		    seqs[seq_array[0]] = seq_array[2].gsub("\n", "").gsub("\r", "")
		end
		return seqs
	end
end