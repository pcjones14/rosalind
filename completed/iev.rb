print "Input data > "
input = gets.strip.split
input.map! {|x| x.to_i}

p (input[0] + input[1] + input[2] + (input[3] * 0.75) + (input[4] * 0.5)) * 2
