require './bioinfo'

ids = []
open('data/id.txt').each {|f| ids << f.strip}

sequences = {}
ids.each do |id|
	fasta = Fasta.new("http://uniprot.org/uniprot/#{id}.fasta").hash
	sequences[id] = fasta.values[0]
end

locations = {}

sequences.each do |id, value|
	(0...value.length).each do |i|
		if value[i] == 'N' && value[i+1] != 'P' && (value[i+2] == 'S' || value[i+2] == 'T') && value[i+3] != 'P'
			if locations[id] == nil
				locations[id] = (i+1).to_s + " "
			else
				locations[id] = locations[id] + (i+1).to_s + " "
			end
		end
	end
end

locations.each do |id, value|
	puts id
	puts value
end