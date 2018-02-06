require './bioinfo'

ids = []
open('data/id.txt').each {|f| ids << f.strip}

sequences = {}
ids.each do |id|
	fasta = Fasta.new("http://uniprot.org/uniprot/#{id}.fasta").hash
	sequences[id] = fasta.values[0]
end

p sequences