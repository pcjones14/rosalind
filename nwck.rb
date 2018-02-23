require 'json'

rawFileData = []
open('./data/tree.txt').each do |line|
	rawFileData += [line]
end

workingData = []
(0...rawFileData.length/3+1).each do |i|
	workingData += [[rawFileData[i*3].strip, rawFileData[i*3+1].strip]]
end

trees = []
workingData.each do |graph|
	a = p graph[0]
	a.gsub!('(','["').gsub!(')','"],"').gsub!(';','"')
	a.prepend('[')
	a += ']'
	if a[-2] == ','
		a[-2] = ''
	end
	puts a
	trees += [JSON.parse(a)]
end

p trees