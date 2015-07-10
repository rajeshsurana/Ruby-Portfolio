=begin
Counts up the number of occurrences of each word in your string.
=end

puts "Enter the text"
text = gets.chomp

words = text.split
frequencies = Hash.new(0)

words.each do |word|
    frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, count|
    count
end

frequencies.reverse!

frequencies.each do |key, value|
    puts key + " " + value.to_s
end