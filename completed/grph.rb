file = ""
File.open('seq.fas').each {|line| file += line}
strings = file.split('>')
strings.shift
seqs = {}
strings.each do |seq|
    seq_array = seq.partition("\n")
    seqs[seq_array[0]] = seq_array[2].gsub("\n", "")
end

names = ""

seqs.each do |parent_name, parent_seq|
  seqs.each do |child_name, child_seq|
    next if parent_name == child_name
    if parent_seq[(parent_seq.length - 3)..parent_seq.length] == child_seq[0..2]
      names += "#{parent_name} #{child_name}\n"
    end
  end  
end

puts names