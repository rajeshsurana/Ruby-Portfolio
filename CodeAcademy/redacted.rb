=begin
Write a simple program to change a user's input with the secret word replaced with 'REDACTED'
=end
puts "Enter text:"
text = gets.chomp
puts "Word to redact:"
redact = gets.chomp

words = text.split(" ")
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end