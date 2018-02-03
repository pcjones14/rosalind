sequences = File.read('rosalind_hamm.txt').split("\n")
hamming_distance = 0
(0..(sequences[0].length-1)).each do |i|
  if sequences[0][i] != sequences[1][i]
    hamming_distance += 1
  end
end

puts hamming_distance
