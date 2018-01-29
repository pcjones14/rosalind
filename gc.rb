def gc_content(str)
  gc_count = 0
  string_array = str.split(//)
  string_array.each do |nuc|
    if nuc == "G" or nuc == "C"
      gc_count += 1
    end
  end
  return gc_count
end

def consolidate_lines_with_header(arr)
  bare_sequence = arr.drop(1).join
  return_value = [arr[0]]
  return_value << bare_sequence
  return return_value
end

final_array = []
sequences = File.read('rosalind_gc.txt').split('>')
sequences.shift
sequences.each do |sequence|
  sequence_by_lines = sequence.split("\n")
  sequence_array = consolidate_lines_with_header(sequence_by_lines)
  gc_count = gc_content(sequence_array[1])
  sequence_array << gc_count
  gc_percent = gc_count.to_f / sequence_array[1].length.to_f
  sequence_array << gc_percent
  final_array << sequence_array
end

sorted_array = final_array.sort_by {|x| x[3]}

puts sorted_array[-1][0]
puts sorted_array[-1][3] * 100