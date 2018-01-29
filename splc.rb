introns = []
File.open('seq.fas').each {|line| introns += [line.strip] unless line[0] == '>'}

seq = introns.shift

introns.each do |intron|
    (0...seq.length).each do |i|
        if seq[i...(i + intron.length)] == intron
            seq[i...(i + intron.length)] = ""
        end
    end
end

p seq