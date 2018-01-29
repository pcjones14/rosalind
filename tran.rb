file = ""
File.open('seq.fas').each {|line| file += line}
strings = file.split('>')
strings.shift
seqs = {}
strings.each do |seq|
    seq_array = seq.partition("\n")
    seqs[seq_array[0]] = seq_array[2].gsub("\n", "")
end

transition = 0
transversion = 0

seqs_array = seqs.values
(0...seqs_array[0].length).each do |i|
    a = seqs_array[0][i]
    b = seqs_array[1][i]
    if a != b
        if ((a == 'A' || a == 'G') && (b == 'A' || b == 'G')) || ((a == 'T' || a == 'C') && (b == 'T' || b == 'C'))
            transition += 1
        else
            transversion += 1
        end
    end
end

p transition.to_f / transversion.to_f