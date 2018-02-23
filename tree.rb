arr = []
open('./data/tree.txt').each do |line|
	line_array = line.split('\n')
	line_array.each do |line2|
		arr += [line2.strip.split(' ')]
	end
end
p arr[0][0].to_i - arr.length