weights_raw = "A   71.03711
C   103.00919
D   115.02694
E   129.04259
F   147.06841
G   57.02146
H   137.05891
I   113.08406
K   128.09496
L   113.08406
M   131.04049
N   114.04293
P   97.05276
Q   128.05858
R   156.10111
S   87.03203
T   101.04768
V   99.06841
W   186.07931
Y   163.06333".split("\n")

weights = {}
weights_raw.each do |weight|
    weight_split = weight.split
    weights[weight_split[0]] = weight_split[1]
end

print "Protein string? > "
protein = gets.strip

weight_value = 0.0
protein.each_char do |codon|
    weight_value += weights["#{codon}"].to_f
end
puts weight_value